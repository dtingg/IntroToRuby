# Ada Jump Start - Lesson 11 Numbers

# Introduce the program
puts "Let's play a numbers game.  How many numbers would you like to enter?"

count = gets.chomp.to_i


# Loop over this part three times
count.times do |i|

  print "#{i+1} - Enter a positive integer: "
  user_int = gets.chomp.to_i

  if user_int % 3 == 0
    puts "#{user_int} is divisible by 3."
  else
    puts "#{user_int} is not divisible by 3."
  end

end
