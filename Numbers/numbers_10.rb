# Ada Jump Start - Lesson 10 Numbers

# Introduce the program
puts "This program will ask you to enter three numbers.
It will tell you if your number is greater than or equal to or less than 20."

# Loop over this part three times
3.times do

print "Enter a positive integer: "
user_int = gets.chomp.to_i

if user_int >= 20
  puts "#{user_int} is greater than or equal to 20."
else
  puts "#{user_int} is less than 20."
end

end
