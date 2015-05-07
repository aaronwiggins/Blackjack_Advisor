def repeat_comment
  ["You have the memory of a goldfish, apparently", "Hellooooooo. No.",
    "Having a senior moment?", "Were you not here a minute ago?" ].sample
end

def out_of_bounds_comment
  "You need to go see a math teacher before you try this game again."
end

def useless_comment
  ["Pay Attention!", "Well that was a wasted guess.", "Did I stutter?"].sample
end

#Checks if the guess is in the opposite direction that the computer gives a hint about.
def useless_guess_check(guess, secret_number, former_guesses)
  if former_guesses.length > 0
    if (guess > secret_number && guess > former_guesses.max && former_guesses.max > secret_number) ||
       (guess < secret_number && guess < former_guesses.min && former_guesses.min < secret_number)
      puts useless_comment
    end
  end
end

#Checks if the user guessed the same number twice.
def repeat_guess_check(guess, former_guesses)
  if former_guesses.include? (guess)
    puts repeat_comment
  end
end

# This combines the guess check methods so that I can call just one
#method in the program body.
def new_guess(secret_number, former_guesses)
  guess = gets.chomp.to_i
  repeat_guess_check(guess, former_guesses)
  useless_guess_check(guess, secret_number, former_guesses)
  former_guesses << guess
  guess
end

#Start of Main Program
secret_number = (1..100).to_a.sample
former_guesses = []
puts "Guess a whole number between 1 and 100"
guess = new_guess(secret_number, former_guesses)
#User can guess up to five times or until the guess is correct. If the
#guess is not a number between 1 and 100, the game ends.
while former_guesses.length < 5
  if guess < 1 || guess > 100
    puts out_of_bounds_comment
    exit
  elsif guess == secret_number
    puts "You Win!"
    exit
  elsif guess > secret_number
    puts "Lower"
  else
    puts "Higher"
  end
  guess = new_guess(secret_number, former_guesses)
end

puts "You Lose!"
