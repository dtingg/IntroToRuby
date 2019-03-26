# Ada Jump Start - Lesson 09 Numbers

# Ask the user for a positive integer three times and save them as variables.
print "Enter a positive integer: "
first_int = gets.chomp.to_i
print "Enter a positive integer: "
second_int = gets.chomp.to_i
print "Enter a positive integer: "
third_int = gets.chomp.to_i

# Add 20 to each integer.
first_int += 20
second_int += 20
third_int += 20

print "Twenty added to the numbers you entered gives us #{first_int}, #{second_int}, and #{third_int}."
