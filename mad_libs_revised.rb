# Dianna's Mad Libs Game
# Create a Mad Lib program that accepts input from the user and outputs a completed Mad Lib

# Welcome the user
puts "Welcome to Dianna's Mad Libs Game!"

# Ask the user to input information
puts "\nPlease enter the following information."

# Use at least 10 parts of speech, reuse one word, use at least 1 number
print "\nPerson's name: "
name1 = gets.chomp.capitalize

print "Person's name: "
name2 = gets.chomp.capitalize

print "Adjective: "
adjective1 = gets.chomp

print "State: "
state = gets.chomp.capitalize

print "Adjective: "
adjective2 = gets.chomp

print "Vehicle: "
vehicle = gets.chomp

print "Food (plural): "
food = gets.chomp

print "Animal (plural)"
animals = gets.chomp

print "Verb (ending in -ing)"
verb1 = gets.chomp

print "Number: "
number = gets.chomp

print "Liquid: "
liquid = gets.chomp.capitalize

puts "\nHere is your Mad Lib:"

puts "#{name1} and #{name2} promised to take me on a #{adjective1} road trip to #{state}.
#{name1} drove a #{adjective2} #{vehicle} and #{name2} packed some delicious #{food} for lunch.
Along the way we saw some #{animals} #{verb1}. We also sang \"#{number} Bottles of #{liquid} on the Wall.\"
I had a great time!"