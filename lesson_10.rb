puts "Pick a number:"
x = gets.chomp.to_i

puts "Pick another number:"
y = gets.chomp.to_i

if x != y and (x < y == true)
  print "less"
elsif x != y and (x > y == true)
  print "greater"
else
  print "equal"
end