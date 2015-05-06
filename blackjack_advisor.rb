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
def ask_player(deck)
  puts "what's your first card?"
  first_card_player = gets.chomp.capitalize
  puts "what's your second card"
  second_card_player = gets.chomp.capitalize
  check_hard_soft_hand(first_card_player, second_card_player)
  p user_hand = deck[first_card_player] + deck[second_card_player]
end

def dealer_card(deck)
  puts "what is the dealer's up card?"
  up_card = gets.chomp.capitalize
  puts up_card
end

def check_hard_soft_hand(a, b)
  if a == "A" || b == "A"
    puts "Soft"
  elsif a == b
    puts "Pair"
  else
    puts "Hard"
  end
end

ask_player(deck_values)
dealer_card(deck_values)
