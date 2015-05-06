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
p deck_values
# player_hand = "#{deck_values.rand}" + "#{deck_values.rand}"
def ask_player(deck)
  puts "what's your first card?"
  first_card_player = gets.chomp.capitalize
    # if first_card_player == "A"
    #
    # end
  puts "what's your second card"
  second_card_player = gets.chomp.capitalize
    # if second_card_player == "A"
    #
    # end
  # p first_card_player
  # p deck[2]
  p user_hand = deck[first_card_player] + deck[second_card_player]
end

def check_hard_soft_hand(1, 2)
  if 1 == "A" || 2 == "A"
    Soft
  elsif 1 == 2
    Pair
  else
    Hard
  end
end





ask_player(deck_values)
