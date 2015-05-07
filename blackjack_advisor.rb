#Ace only equals 11 as of now, allows user to put in 11 instead of A for Ace
#at the moment

deck_values = {
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9,
  "10" => 10,
  "J" => 10,
  "Q" => 10,
  "K" => 10,
  "A" => 11,
  "11"=> 11,
          #{one: "1",
          #eleven: "11",}
}
def ask_player(deck, hand)
  puts "what's your first card?"
  first_card_player = gets.chomp.capitalize
  puts "what's your second card"
  second_card_player = gets.chomp.capitalize

  p user_hand = deck[first_card_player] + deck[second_card_player]
  puts "what is the dealer's up card?"
  up_card_dealer = gets.chomp.capitalize
  p_d_hand_combined = "#{user_hand}" + "#{up_card_dealer}"
  type = check_hard_soft_hand(first_card_player, second_card_player)
  optimal_move(type, p_d_hand_combined, hand)
end

#forgot to account for "double-down, otherwise split." not in the hash in yet)
def optimal_move(a, b, hand)
  if hand["#{a}"]["hits"].include?("#{b}")
    puts "You should hit"
  elsif hand["#{a}"]["stand"].include?("#{b}")
    puts "You should stand"
  elsif hand["#{a}"]["double"].include?("#{b}")
    puts "You should double-down, otherwise hit"
  else
    puts "You should split"
  end
end

def check_hard_soft_hand(a, b) #doesn't put pair if you have 2 Aces
  if a == "A" || b == "A"
    "Soft"
  elsif a == b
    "Pair"
  else
    "Hard"
  end
end

hand = {
  "Hard" => {
    "hits" => ["52", "53", "54", "55", "56", "57", "58", "59", "510", "511", "62",
      "63", "62", "65", "66", "67", "68", "67", "68", "69", "610", "611", "72",
      "73", "74", "75", "76", "77", "78", "79", "710", "711", "82", "83", "84",
      "87", "88", "89", "810", "811", "97", "98", "99", "910", "911", "1010",
      "1011", "122", "123", "127", "128", "129", "1210", "1211", "137", "138",
      "139", "1310", "1311", "147", "148", "149", "1410", "1411", "157", "158",
      "159", "1510", "1511", "167", "168", "169", "1610", "1611"],
    "stand" => ["124", "125", "126", "132", "133", "134", "135", "136", "142",
      "143", "144", "145", "146", "152", "153", "154", "155", "156", "163", "164",
      "165", "166", "172", "173", "174", "175", "176", "177", "178", "179",
      "1710", "1711", "182", "183", "184", "185", "186", "187", "188", "189",
      "1810", "1811", "192", "193", "194", "195", "196", "197", "198", "199",
      "1910", "1911", "202", "203", "204", "205", "206", "207", "208", "209",
      "2010", "2011", "212", "213", "214", "215", "216", "217", "218", "219",
      "2110", "2111"],
    "double" => ["85", "86", "92", "93", "94", "95", "96", "102", "103", "104",
      "112", "113", "114", "115", "116", "117", "118", "119", "1110", "1111",]
    },
  "Soft" => {
    "hits" => ["132", "133", "137", "138", "139", "1310", "1311", "142", "143",
      "147", "148", "149", "1410", "1411", "152", "153", "157", "158", "159",
      "1510", "1511", "162", "163", "167", "168", "169", "1610", "1611", "177",
      "178", "179", "1710", "1711", "189", "1810"],
    "stand" => ["182", "187", "188", "1811", "192", "193", "194", "195",
      "197", "198", "199", "1910", "1911", "202", "203", "204", "205", "206",
      "207", "208", "209", "2010", "2011", "212", "213", "214", "215", "216",
      "217", "218", "219", "2110", "2111"],
    "double" => ["134", "135", "136", "144", "145", "146", "154", "155", "156",
      "164", "165", "166", "172", "173", "173", "174", "175", "176", "183",
      "184", "185", "186", "196"]
    },
  "Pair" => {
    "hits" => ["48", "49", "410", "411", "69", "610", "611", "82", "83", "87",
      "88", "89", "810", "811", "1010", "1011", "128", "129", "1210", "1211",
      "149", "1411"],
    "stand" => ["1410", "187", "1810", "1811", "202", "203", "204", "205", "206",
      "207", "208", "209", "2010", "2011"],
    "double" => ["102", "103", "104", "105", "106", "107", "108", "109"],
    "split" => ["42", "43", "44", "45", "46", "47", "62", "63", "64", "65", "66",
      "67", "68", "84", "85", "86", "122", "123", "124", "125", "126", "127",
      "142", "143", "144", "145", "146", "147", "148", "162", "163", "164", "165",
      "166", "167", "168", "169", "1610", "1611", "182", "183", "184", "185",
      "186", "188", "189", "222", "223", "224", "225", "226", "227", "228", "229",
      "2210", "2211"]
    }
  }

ask_player(deck_values, hand)
