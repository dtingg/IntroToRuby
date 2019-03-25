# Codecademy - Daffy Duck

print "Enter a string please: "
user_input = gets.chomp

# If input is an empty string, prompt user again.
while user_input == ""
  print "Please enter a string: "
  user_input = gets.chomp
end

# Replace capital "S" with "Th"
if user_input.include? "S"
  user_input.gsub!("S", "Th")
end

# Replace lowercase "s" with "th"
if user_input.include? "s"
  user_input.gsub!("s", "th")
end

# Print new string
print user_input
