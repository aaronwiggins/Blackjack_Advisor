h = {"Mason" =>     {phone: ["919-111", "430-111"],
                     email: "m@m.com"},
     "Nathaniel" => {phone: "919-222",
                     email: "n@n.com"}
    }

mason_info = h["Mason"]

p mason_info

puts mason_info[:phone]

# # ANSWER 3
#
# directory = {"Mason" => "919-302-5139"}
#
# loop do
#   puts "Gimme a name"
#   name = gets.chomp
#   if name == ""
#     break
#   else
#     puts "Gimme a number"
#     number = gets.chomp
#
#     directory[name] = number
#   end
# end
#
# loop do
#   puts "Now whose number do you want?"
#   name = gets.chomp
#   if name == ""
#     break
#   end
#   puts "The number is: #{directory[name]}"
# end


# ANSWER 2
#
# require 'set'
#
# names = Set.new
#
# loop do
#   puts "Gimme a name"
#   name = gets.chomp
#   if name == ""
#     break
#   else
#     names << name
#   end
# end
#
# p names


# ANSWER 1
#
# names = []
#
# loop do
#   puts "Gimme a name"
#   name = gets.chomp
#   if name == ""
#     break
#   else
#     names << name
#   end
# end
#
# p names
