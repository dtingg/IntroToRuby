# Codecademy - Formatter

print "What is your first name? "
first_name = gets.chomp.capitalize!

print "What is your last name? "
last_name = gets.chomp.capitalize!

print "What city do you live in? "
city = gets.chomp.capitalize!

print "What state do you live in? (abbreviation) "
state = gets.chomp.upcase!

puts "Your name is #{first_name} #{last_name}.  You live in #{city}, #{state}."
