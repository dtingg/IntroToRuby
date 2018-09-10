=begin
Ruby program

Create a MadLib program that accepts input from the user and outputs a completed MadLib
Use up to ten different parts of speech in order to fill in your MadLib
Output should consist of a paragraph of output that has the user's input substituted into the MadLib

Use comments throughout to explain the code
Reuse at least one word
Ask for at least one number
Explore Ruby's built in methods for strings like capitalize, downcase, upcase
=end

# Introduce the game
puts "Welcome to Dianna's MadLib program!  Please enter some information below."

# Get input from user and store as variables
puts "\nName:"
name = gets.chomp

puts "Adjective:"
adjective1 = gets.chomp

puts "Food(singular):"
food_singular = gets.chomp

puts "Adjective:"
adjective2 = gets.chomp

puts "Food(plural):"
food_plural1 = gets.chomp

puts "Food(plural):"
food_plural2 = gets.chomp

puts "City:"
city = gets.chomp

puts "Spice:"
spice = gets.chomp

puts "Adjective:"
adjective3 = gets.chomp

puts "Day of the week:"
day = gets.chomp

puts "Number:"
number = gets.chomp

# Print completed MadLib
puts "\nHere's your MadLib:"

puts "\nCome visit #{name.capitalize}'s Pizza Parlor, where you can enjoy #{adjective1.downcase} food."
puts "You can try our famous #{food_singular.capitalize}-Lovers pizza or make your own creation."
puts "We have a #{adjective2.downcase} selection of toppings including #{food_plural1.downcase} and #{food_plural2.downcase}."
puts "Our crusts are made in #{city.capitalize} and dusted with #{spice.downcase} to make them #{adjective3.downcase}."
puts "We have a special every #{day.capitalize}: #{number} pizzas for $#{number} each."

puts "\nThe End"
