use {
    serde_derive::{Serialize, Deserialize},
    std::{
        io::{self, BufReader, BufRead as _, stdin},
        fs::{File},
        collections::{HashMap, HashSet},
    },
    generic_array::{arr},
    regex::Regex,
    derive_more::{Display},
    joinery::{Joinable},
};

type NodeId = u32;

#[derive(Serialize, Deserialize)]
#[derive(Debug, Clone)]
#[derive(Eq, PartialEq, Hash)]
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
    map: HashMap<NodeId, Node>,
}

impl Graph {
    fn possible_nodes(
        &self, last_known: NodeId, tickets: impl IntoIterator<Item=TicketKind>,
    ) -> HashSet<NodeId> {
        let mut nodes: HashSet<NodeId> = arr![NodeId; last_known].into_iter().collect();

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
            }).into_iter().collect::<HashSet<NodeId>>();
        }

        nodes
    }
}

fn parse_line(line: &str) -> Option<(NodeId, Vec<TicketKind>)> {
    let num_re = Regex::new(r"\d+").unwrap();
    let ticket_re = Regex::new(r"taxi|bus|tube|black").unwrap();

    let node_id: NodeId = num_re.find(line)?.as_str().parse().ok()?;

    let tickets = ticket_re.find_iter(line).filter_map(|mtch| {
        Some(match mtch.as_str() {
            "taxi" => TicketKind::Taxi,
            "bus" => TicketKind::Bus,
            "tube" => TicketKind::Tube,
            "black" => TicketKind::Black,
            _ => return None,
        })
    }).collect::<Vec<TicketKind>>();

    Some((node_id, tickets))
}

fn main() -> io::Result<()> {
    let file = File::open("nodes.json")?;
    let nodes: Vec<Node> = serde_json::from_reader(BufReader::new(file))?;

    let graph = nodes.into_iter()
        .map(|node| (node.id, node))
        .collect::<HashMap<NodeId, Node>>();
    let graph = Graph{map: graph};

    for line in BufReader::new(stdin()).lines() {
        if let Some((node_id, tickets)) = parse_line(line?.as_str()) {
            println!("Mr. X was last seen at {}, and has since used these tickets:", node_id);
            println!("  {}", tickets.clone().join_with(", "));

            let nodes = graph.possible_nodes(node_id, tickets);

            println!("By now, he could be at these {} locations:", nodes.len());
            println!("  {}", nodes.join_with(", "));
        } else {
            println!("Invalid line");
        }
    }

    Ok(())
}
