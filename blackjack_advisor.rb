#if you have an Ace in the hand or have a soft hand, all you need to worry about
#is the total in the hand, not whether the Ace will be 1 or 11
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

#creating array for hits if player hand is hard
hard_five = (52..59).to_a
leftover_five = [510, 511]
hard_six = (62..69).to_a
leftover_six = [610, 611]
hard_seven = (72..79).to_a
leftover_seven = [710, 711]

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
