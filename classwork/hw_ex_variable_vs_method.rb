# Working Code

def get_random_number
  rand(1..100)
end

puts "Please guess a number between 1 and 100."
counter = 0
array = []

answer = get_random_number

while counter < 5
  number = gets.chomp.to_i
  array << number
  if number > answer
    puts "Guess a lower number."
    counter += 1
  elsif number < answer
    puts "Guess a higher number"
    counter += 1
  else
    puts  "You got it! You win!"
    break
  end

  if counter == 5
    puts "You lose. The correct number was #{answer}"
    puts array
  end
end


# # WHY NO WORK?
# def guess
#   rand(1..100).to_i
# end
#
# puts "Guess: #{guess}"
# guess = guess
# puts "Guess: #{guess}"
