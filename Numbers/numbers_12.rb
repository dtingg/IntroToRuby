# Ada Jump Start - Lesson 12 Numbers

# Introduce the program
print "Let's play a numbers game.  How many numbers would you like to enter?"

count = gets.chomp.to_i

# Array to hold the user's numbers
numbers = []

# Loop over this part "count" number of times
count.times do |i|
  print "#{i+1} - Enter a positive integer: "
  user_int = gets.chomp.to_i
  numbers.push(user_int)
end

i = 0
last_num = numbers.last

puts "\nComparing to the last value entered, #{last_num}, here are the observations:"

while i < numbers.length
  if numbers[i] < last_num
    puts "The value at index #{i}, #{numbers[i]} is less than the value at the last index, #{last_num}."
  elsif numbers[i] > last_num
    puts "The value at index #{i}, #{numbers[i]} is greater than the value at the last index, #{last_num}."
  else
    puts "The value at index #{i}, #{numbers[i]} is equal to the value at the last index, #{last_num}."
  end
  i += 1

end

puts "The minimum value in the array is #{numbers.min}."
puts "The maximum value in the array is #{numbers.max}."
puts "The average of all the values in the array is #{numbers.sum / numbers.size.to_f}."