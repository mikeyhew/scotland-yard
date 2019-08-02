# taken from https://github.com/geeksam/Scotland-Yard/blob/2a78b51a8c8f4452d11d5890d6c1d86bd58ce6eb/lib/boards/full_board.rb
FullBoard = {
  1 => {
    :yellow => [8, 9],
    :green  => [58, 46],
    :red    => [46],
  },
  2 => {
    :yellow => [10, 20],
  },
  3 => {
    :yellow => [4, 11, 12],
    :green  => [22, 23],
  },
  4 => {
    :yellow => [3, 13],
  },
  5 => {
    :yellow => [15, 16],
  },
  6 => {
    :yellow => [7, 29],
  },
  7 => {
    :yellow => [6, 17],
    :green  => [42],
  },
  8 => {
    :yellow => [1, 18, 19],
  },
  9 => {
    :yellow => [1, 19, 20],
  },
  10 => {
    :yellow => [2, 11, 21, 34],
  },
  11 => {
    :yellow => [3, 10, 22],
  },
  12 => {
    :yellow => [3, 23],
  },
  13 => {
    :yellow => [4, 23, 24],
    :green  => [14, 23, 52],
    :red    => [46, 67, 89],
  },
  14 => {
    :yellow => [15, 25],
    :green  => [13, 15],
  },
  15 => {
    :yellow => [5, 14, 16, 26, 28],
    :green  => [14, 29, 41],
  },
  16 => {
    :yellow => [5, 15, 28, 29],
  },
  17 => {
    :yellow => [7, 29, 30],
  },
  18 => {
    :yellow => [8, 31, 43],
  },
  19 => {
    :yellow => [8, 9, 32],
  },
  20 => {
    :yellow => [2, 9, 33],
  },
  21 => {
    :yellow => [10, 33],
  },
  22 => {
    :yellow => [11, 23, 34, 35],
    :green  => [3, 23, 34, 65],
  },
  23 => {
    :yellow => [12, 13, 22, 37],
    :green  => [3, 13, 22, 67],
  },
  24 => {
    :yellow => [13, 37, 38],
  },
  25 => {
    :yellow => [14, 38, 39],
  },
  26 => {
    :yellow => [15, 27, 39],
  },
  27 => {
    :yellow => [26, 28, 40],
  },
  28 => {
    :yellow => [15, 16, 27, 41],
  },
  29 => {
    :yellow => [6, 16, 17, 41, 42],
    :green  => [15, 41, 42, 55],
  },
  30 => {
    :yellow => [17, 42],
  },
  31 => {
    :yellow => [18, 43, 44],
  },
  32 => {
    :yellow => [19, 33, 44, 45],
  },
  33 => {
    :yellow => [20, 21, 32, 46],
  },
  34 => {
    :yellow => [10, 22, 47, 48],
    :green  => [22, 46, 63],
  },
  35 => {
    :yellow => [22, 36, 48, 65],
  },
  36 => {
    :yellow => [35, 37, 49],
  },
  37 => {
    :yellow => [23, 24, 36, 50],
  },
  38 => {
    :yellow => [24, 25, 50, 51],
  },
  39 => {
    :yellow => [25, 26, 51, 52],
  },
  40 => {
    :yellow => [27, 41, 52, 53],
  },
  41 => {
    :yellow => [28, 29, 40, 54],
    :green  => [15, 29, 52, 87],
  },
  42 => {
    :yellow => [29, 30, 56, 72],
    :green  => [7, 29, 72],
  },
  43 => {
    :yellow => [18, 31, 57],
  },
  44 => {
    :yellow => [31, 32, 58],
  },
  45 => {
    :yellow => [32, 46, 58, 59, 60],
  },
  46 => {
    :yellow => [33, 45, 47, 61],
    :green  => [1, 34, 58, 78],
    :red    => [1, 13, 74, 79],
  },
  47 => {
    :yellow => [34, 46, 62],
  },
  48 => {
    :yellow => [34, 35, 62, 63],
  },
  49 => {
    :yellow => [36, 50, 66],
  },
  50 => {
    :yellow => [37, 38, 49],
  },
  51 => {
    :yellow => [38, 39, 52, 67, 68],
  },
  52 => {
    :yellow => [39, 40, 51, 69],
    :green  => [13, 41, 67, 86],
  },
  53 => {
    :yellow => [40, 54, 69],
  },
  54 => {
    :yellow => [41, 53, 55, 70],
  },
  55 => {
    :yellow => [54, 71],
    :green  => [29, 89],
  },
  56 => {
    :yellow => [42, 91],
  },
  57 => {
    :yellow => [43, 58, 73],
  },
  58 => {
    :yellow => [44, 45, 57, 59, 74, 75],  #???
    :green  => [1, 46, 74, 77],
  },
  59 => {
    :yellow => [45, 58, 75, 76],
  },
  60 => {
    :yellow => [45, 61, 76],
  },
  61 => {
    :yellow => [46, 60, 62, 76, 78],
  },
  62 => {
    :yellow => [47, 48, 61, 79],
  },
  63 => {
    :yellow => [48, 64, 79, 80],
    :green  => [34, 65, 79, 100],
  },
  64 => {
    :yellow => [63, 65, 81],
  },
  65 => {
    :yellow => [35, 64, 66, 82],
    :green  => [22, 63, 67, 82],
  },
  66 => {
    :yellow => [49, 65, 67, 82],
  },
  67 => {
    :yellow => [51, 66, 68, 84],
    :green  => [23, 52, 65, 82, 102],
    :red    => [13, 79, 89, 111],
  },
  68 => {
    :yellow => [51, 67, 69, 85],
  },
  69 => {
    :yellow => [52, 53, 68, 86],
  },
  70 => {
    :yellow => [54, 71, 87],
  },
  71 => {
    :yellow => [55, 70, 72, 89],
  },
  72 => {
    :yellow => [42, 71, 90, 91],
    :green  => [42, 105, 107],
  },
  73 => {
    :yellow => [57, 74, 92],
  },
  74 => {
    :yellow => [58, 73, 75, 92],
    :green  => [58, 94],
    :red    => [46],
  },
  75 => {
    :yellow => [58, 59, 74, 94],
  },
  76 => {
    :yellow => [59, 60, 61, 77],
  },
  77 => {
    :yellow => [76, 78, 95, 96],
    :green  => [58, 78, 94, 124],
  },
  78 => {
    :yellow => [61, 77, 79, 97],
    :green  => [46, 77, 79],
  },
  79 => {
    :yellow => [62, 63, 78, 98],
    :green  => [78, 63],
    :red    => [46, 67, 93, 111],
  },
  80 => {
    :yellow => [63, 99, 100],
  },
  81 => {
    :yellow => [64, 82, 100],
  },
  82 => {
    :yellow => [65, 66, 81, 101],
    :green  => [65, 67, 100, 140],
  },
  83 => {
    :yellow => [101, 102],
  },
  84 => {
    :yellow => [67, 85],
  },
  85 => {
    :yellow => [68, 84, 103],
  },
  86 => {
    :yellow => [69, 103, 104],
    :green  => [52, 87, 102, 116],
  },
  87 => {
    :yellow => [70, 88],
    :green  => [41, 86, 105],
  },
  88 => {
    :yellow => [87, 89, 117],
  },
  89 => {
    :yellow => [71, 88, 105],
    :green  => [55, 105],
    :red    => [13, 67, 128, 140],
  },
  90 => {
    :yellow => [72, 91, 105],
  },
  91 => {
    :yellow => [56, 72, 90, 105, 107],
  },
  92 => {
    :yellow => [73, 74, 93],
  },
  93 => {
    :yellow => [92, 94],
    :green  => [94],
    :red    => [79],
  },
  94 => {
    :yellow => [75, 93, 95],
    :green  => [74, 77, 93],
  },
  95 => {
    :yellow => [77, 94, 122],
  },
  96 => {
    :yellow => [77, 97, 109],
  },
  97 => {
    :yellow => [78, 96, 98, 109],
  },
  98 => {
    :yellow => [79, 97, 99, 110],
  },
  99 => {
    :yellow => [80, 98, 110],
  },
  100 => {
    :yellow => [80, 81, 101, 112, 113],
    :green  => [63, 82, 111],
  },
  101 => {
    :yellow => [82, 83, 100, 114],
  },
  102 => {
    :yellow => [83, 103, 115],
    :green  => [67, 86, 127],
  },
  103 => {
    :yellow => [85, 86, 102],
  },
  104 => {
    :yellow => [86, 116],
  },
  105 => {
    :yellow => [89, 90, 91, 106, 108],
    :green  => [72, 87, 89, 107, 108],
  },
  106 => {
    :yellow => [105, 107],
  },
  107 => {
    :yellow => [91, 106, 119],
    :green  => [72, 105, 161],
  },
  108 => {
    :yellow => [105, 117, 119],
    :green  => [105, 116, 135],
    :black  => [115],
  },
  109 => {
    :yellow => [96, 97, 110, 124],
  },
  110 => {
    :yellow => [98, 99, 109, 111],
  },
  111 => {
    :yellow => [110, 112, 124],
    :green  => [100, 124],
    :red    => [67, 79, 153, 163],
  },
  112 => {
    :yellow => [100, 111, 125],
  },
  113 => {
    :yellow => [100, 114, 125],
  },
  114 => {
    :yellow => [101, 113, 115, 126, 131, 132],
  },
  115 => {
    :yellow => [102, 114, 126, 127],
    :black  => [108, 157],
  },
  116 => {
    :yellow => [104, 117, 118, 127],
    :green  => [86, 108, 127, 142],
  },
  117 => {
    :yellow => [88, 108, 116, 129],
  },
  118 => {
    :yellow => [116, 129, 134, 142],
  },
  119 => {
    :yellow => [107, 108, 136],
  },
  120 => {
    :yellow => [121, 144],
  },
  121 => {
    :yellow => [120, 122, 145],
  },
  122 => {
    :yellow => [95, 121, 123, 146],
    :green  => [123, 144],
  },
  123 => {
    :yellow => [122, 124, 137, 148, 149],
    :green  => [122, 124, 144, 165],
  },
  124 => {
    :yellow => [109, 111, 123, 130, 138],
    :green  => [77, 111, 123, 153],
  },
  125 => {
    :yellow => [112, 113, 131],
  },
  126 => {
    :yellow => [114, 115, 127, 140],
  },
  127 => {
    :yellow => [115, 116, 126, 133, 134],
    :green  => [102, 116, 133],
  },
  128 => {
    :yellow => [142, 143, 160, 172, 188],
    :green  => [135, 142, 161, 187, 199],
    :red    => [89, 140, 185],
  },
  129 => {
    :yellow => [117, 118, 135, 142, 143],
  },
  130 => {
    :yellow => [124, 131, 139],
  },
  131 => {
    :yellow => [114, 125, 130],
  },
  132 => {
    :yellow => [114, 140],
  },
  133 => {
    :yellow => [127, 140, 141],
    :green  => [127, 140, 157],
  },
  134 => {
    :yellow => [118, 127, 141, 142],
  },
  135 => {
    :yellow => [129, 136, 143, 161],
    :green  => [108, 128, 161],
  },
  136 => {
    :yellow => [119, 135, 162],
  },
  137 => {
    :yellow => [123, 147],
  },
  138 => {
    :yellow => [124, 150, 152],
  },
  139 => {
    :yellow => [130, 140, 153, 154],
  },
  140 => {
    :yellow => [126, 132, 133, 139, 154, 156],
    :green  => [82, 133, 154, 156],
    :red    => [89, 128, 153],
  },
  141 => {
    :yellow => [133, 134, 142, 158],
  },
  142 => {
    :yellow => [118, 128, 129, 134, 141, 143, 158],
    :green  => [116, 128, 157],
  },
  143 => {
    :yellow => [128, 129, 135, 142, 160],
  },
  144 => {
    :yellow => [120, 145, 177],
    :green  => [122, 123, 163],
  },
  145 => {
    :yellow => [121, 144, 146],
  },
  146 => {
    :yellow => [122, 145, 147, 163],
  },
  147 => {
    :yellow => [137, 146, 164],
  },
  148 => {
    :yellow => [123, 149, 164],
  },
  149 => {
    :yellow => [123, 148, 150, 165],
  },
  150 => {
    :yellow => [138, 149, 151],
  },
  151 => {
    :yellow => [150, 152, 165, 166],
  },
  152 => {
    :yellow => [138, 151, 153],
  },
  153 => {
    :yellow => [139, 152, 154, 166, 167],
    :green  => [124, 154, 180, 184],
    :red    => [111, 140, 163, 185],
  },
  154 => {
    :yellow => [139, 140, 153, 155],
    :green  => [140, 153, 156],
  },
  155 => {
    :yellow => [154, 156, 167, 168],
  },
  156 => {
    :yellow => [140, 155, 157, 169],
    :green  => [140, 154, 157, 184],
  },
  157 => {
    :yellow => [156, 158, 170],
    :green  => [156, 133, 142, 185],
    :black  => [115, 194],
  },
  158 => {
    :yellow => [141, 142, 157, 159],
  },
  159 => {
    :yellow => [158, 170, 172, 186],
  },
  160 => {
    :yellow => [128, 143, 161, 173],
  },
  161 => {
    :yellow => [135, 160, 174],
    :green  => [107, 128, 135, 199],
  },
  162 => {
    :yellow => [136, 175],
  },
  163 => {
    :yellow => [146, 177],
    :green  => [144, 176, 191],
    :red    => [111, 153],
  },
  164 => {
    :yellow => [147, 148, 178, 179],
  },
  165 => {
    :yellow => [149, 151, 179, 180],
    :green  => [123, 180, 191],
  },
  166 => {
    :yellow => [151, 153, 181, 183],
  },
  167 => {
    :yellow => [153, 155, 168, 183],
  },
  168 => {
    :yellow => [155, 167, 184],
  },
  169 => {
    :yellow => [156, 184],
  },
  170 => {
    :yellow => [157, 159, 185],
  },
  171 => {
    :yellow => [173, 175, 199],
  },
  172 => {
    :yellow => [128, 159, 187],
  },
  173 => {
    :yellow => [160, 171, 174, 188],
  },
  174 => {
    :yellow => [161, 173, 175],
  },
  175 => {
    :yellow => [162, 174, 171],
  },
  176 => {
    :yellow => [177, 189],
    :green  => [163, 190],
  },
  177 => {
    :yellow => [144, 163, 176],
  },
  178 => {
    :yellow => [164, 189, 191],
  },
  179 => {
    :yellow => [164, 165, 191],
  },
  180 => {
    :yellow => [165, 181, 193],
    :green  => [153, 165, 190, 184],
  },
  181 => {
    :yellow => [166, 180, 182, 193],
  },
  182 => {
    :yellow => [181, 183, 195],
  },
  183 => {
    :yellow => [166, 167, 182, 196],
  },
  184 => {
    :yellow => [168, 169, 185, 196, 197],
    :green  => [153, 156, 180, 185],
  },
  185 => {
    :yellow => [170, 184, 186],
    :green  => [157, 184, 187],
    :red    => [128, 153],
  },
  186 => {
    :yellow => [185, 159, 198],
  },
  187 => {
    :yellow => [172, 188, 198],
    :green  => [128, 185],
  },
  188 => {
    :yellow => [128, 173, 187, 199],
  },
  189 => {
    :yellow => [176, 178, 190],
  },
  190 => {
    :yellow => [189, 191, 192],
    :green  => [176, 180, 191],
  },
  191 => {
    :yellow => [178, 179, 190, 192],
    :green  => [163, 165, 190],
  },
  192 => {
    :yellow => [190, 191, 194],
  },
  193 => {
    :yellow => [180, 181, 194],
  },
  194 => {
    :yellow => [192, 193, 195],
    :black  => [157],
  },
  195 => {
    :yellow => [182, 194, 197],
  },
  196 => {
    :yellow => [183, 184, 197],
  },
  197 => {
    :yellow => [184, 195, 196],
  },
  198 => {
    :yellow => [186, 187, 199],
  },
  199 => {
    :yellow => [171, 188, 198],
    :green  => [128, 161],
  },
}

nodes = FullBoard.map do |id, neighbours|
  {
    :id => id,
    :taxi => neighbours.fetch(:yellow, []),
    :bus => neighbours.fetch(:green, []),
    :tube => neighbours.fetch(:red, []),
    :boat => neighbours.fetch(:black, []),
  }
end

require "json"
File.write("nodes.json", nodes.to_json)
