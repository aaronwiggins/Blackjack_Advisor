#if you have an Ace in the hand or have a soft hand, all you need to worry about
#is the total in the hand, not whether the Ace will be 1 or 11
hand = {
"player_hand_hard" => {
"hits" => ["52", "53", "54", "55", "56", "57", "58", "59", "510", "511", "62",
  "63", "62", "65", "66", "67", "68", "67", "68", "69", "610", "611", "72",
  "73", "74", "75", "76", "77", "78", "79", "710", "711", "82", "83", "84",
  "87", "88", "89", "810", "811", "97", "98", "99", "910", "911", "1010",
  "1011", "122", "123", "127", "128", "129", "1210", "1211", "137", "138",
  "139", "1310", "1311", "147", "148", "149", "1410", "1411", "157", "158",
  "159", "1510", "1511", "167", "168", "169", "1610", "1611"],
"stand" => ["124", "125", "126", "132", "133", "134", "135", "136", "142", "143",
  "144", "145", "146", "152", "153", "154", "155", "156", "163", "164", "165",
    "166", "172", "173", "174", "175", "176", "177", "178", "179", "1710",
    "1711", "182", "183", "184", "185", "186", "187", "188", "189", "1810",
    "1811", "192", "193", "194", "195", "196", "197", "198", "199", "1910",
    "1911", "202", "203", "204", "205", "206", "207", "208", "209", "2010",
    "2011", "212", "213", "214", "215", "216", "217", "218", "219", "2110",
    "2111"]
  }
}
p hand["player_hand_hard"]["hits"].include?("124")
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
  "A" => 11,#{one: "1",
          #eleven: "11",}
}
def ask_player(deck)
  puts "what's your first card?"
  first_card_player = gets.chomp.capitalize
  puts "what's your second card"
  second_card_player = gets.chomp.capitalize
  check_hard_soft_hand(first_card_player, second_card_player)
  p user_hand = deck[first_card_player] + deck[second_card_player]
  puts "what is the dealer's up card?"
  up_card_dealer = gets.chomp.capitalize
  puts up_card_dealer
#need to add up_card_dealer and user_hand, have it be a new variable
end


#  hard_hand = {
#     5 => {
#       2 => "H",
#       3 => "H",
#       4 => "H",
#       5 => "H",
#       6 => "H",
#       7 => "H",
#       8 => "H",
#       9 => "H",
#       10 => "H",
#       11 => "H",
#     },
#     6 => {
#       2 => "H",
#       3 => "H",
#       4 => "H",
#       5 => "H",
#       6 => "H",
#       7 => "H",
#       8 => "H",
#       9 => "H",
#       10 => "H",
#       11 => "H",
#     },
#   }
# p hard_hand
# def dealer_card(deck)
#   puts "what is the dealer's up card?"
#   up_card_dealer = gets.chomp.capitalize
#   puts up_card_dealer
# end

def check_hard_soft_hand(a, b) #doesn't put pair if you Aces
  if a == "A" || b == "A"
    puts "Soft"
  elsif a == b
    puts "Pair"
  else
    puts "Hard"
  end
end

# def hard_hand(a)
#   if a == "Hard" && user_hand
#
# end
#
# def soft_hand
#
# end
#
# def pair_hand
#
# end

ask_player(deck_values)
