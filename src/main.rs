use {
    serde_derive::{Serialize, Deserialize},
    std::{
        io::{BufReader},
        fs::{File},
        collections::{BTreeMap, BTreeSet},
    },
    generic_array::{arr},
    regex::Regex,
    derive_more::{Display},
    joinery::{Joinable},
    failure::{Error, format_err, ensure, bail},
    rustyline::error::ReadlineError,
};

type NodeId = u32;

#[derive(Serialize, Deserialize)]
#[derive(Debug, Clone)]
struct Node {
    id: NodeId,
    taxi: Vec<NodeId>,
    bus: Vec<NodeId>,
    tube: Vec<NodeId>,
    boat: Vec<NodeId>,
}

#[derive(Debug, Clone, Copy)]
#[derive(Eq, PartialEq, Hash)]
#[derive(Display)]
enum TicketKind {
    Taxi,
    Bus,
    Tube,
    Black,
}

struct Graph {
    map: BTreeMap<NodeId, Node>,
}

impl Graph {
    fn possible_nodes(
        &self, last_known: NodeId, tickets: impl IntoIterator<Item=TicketKind>,
    ) -> Vec<NodeId> {
        let mut nodes: BTreeSet<NodeId> = arr![NodeId; last_known].into_iter().collect();

        for ticket in tickets.into_iter() {
            nodes = nodes.into_iter().flat_map(|node_id| {
                let node = &self.map[&node_id];

                match ticket {
                    TicketKind::Taxi => node.taxi.clone(),
                    TicketKind::Bus => node.bus.clone(),
                    TicketKind::Tube => node.tube.clone(),
                    TicketKind::Black => {
                        vec![node.taxi.iter(), node.bus.iter(), node.tube.iter(), node.boat.iter()]
                            .into_iter()
                            .flat_map(Iterator::copied)
                            .collect::<Vec<NodeId>>()
                    }
                }
            }).into_iter().collect::<BTreeSet<NodeId>>();
        }

        nodes.into_iter().collect()
    }
}

fn parse_line(line: &str) -> Result<(NodeId, Vec<TicketKind>), Error> {
    let num_re = Regex::new(r"\d+").unwrap();
    let ticket_re = Regex::new(r"[a-zA-Z]+").unwrap();

    let node_id: NodeId = num_re.find(line)
        .ok_or_else(|| format_err!("Could not find the initial place number"))?
        .as_str()
        .parse()
        .map_err(|_| format_err!("Failed to parse place number"))?;

    ensure!((1..=199).contains(&node_id), "Place number {} is out of range", node_id);

    let tickets = ticket_re.find_iter(line).map(|mtch| {
        let word = mtch.as_str().to_lowercase();

        Ok(match word.as_str() {
            "taxi" => TicketKind::Taxi,
            "bus" => TicketKind::Bus,
            "tube" => TicketKind::Tube,
            "black" => TicketKind::Black,
            _ => bail!("Bad ticket type: {}", word),
        })
    }).collect::<Result<Vec<TicketKind>, _>>()?;

    Ok((node_id, tickets))
}

fn main() -> Result<(), Error> {
    let file = File::open("nodes.json")?;
    let nodes: Vec<Node> = serde_json::from_reader(BufReader::new(file))?;

    let graph = nodes.into_iter()
        .map(|node| (node.id, node))
        .collect::<BTreeMap<NodeId, Node>>();
    let graph = Graph{map: graph};

    let mut editor = rustyline::Editor::<()>::new();

    loop {
        let line = match editor.readline("> ") {
            Ok(line) => line,
            Err(ReadlineError::Interrupted) => continue,
            Err(ReadlineError::Eof) => break,
            err => err?,
        };

        match parse_line(&line) {
            Ok((node_id, tickets)) => {
                editor.add_history_entry(line);

                println!("Mr. X was last seen at {}, and has since used these tickets:", node_id);
                println!("  {}", tickets.clone().join_with(", "));

                let nodes = graph.possible_nodes(node_id, tickets);

                println!("By now, he could be at these {} locations:", nodes.len());
                println!("  {}", nodes.join_with(", "));
            }
            Err(err) => {
                eprintln!("{}", err);
            }
        }
    }

    Ok(())
}
