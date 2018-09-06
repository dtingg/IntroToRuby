# Candy Machine Program

# Welcome the user
puts "Welcome to Dianna's Candy Machine"
puts "All candy provided is virtual.  :-)"

# Ask the user how much money they have
print "\nHow much money do you have? $"
user_money = gets.chomp.to_f

# Make a hash table to hold the selections
# key is selection letter, values are price[0], item[1]
candy_hash = {"A" => [1.50, "Twix"], "B" => [2.00, "Snickers"], "C" => [3.50, "Red Vines"], "D" => [4.00, "Apple Rings"], "E" => [5.25, "Salt Water Taffy"]}

# Display all candy options and their costs
puts "\nThis is what we offer:"

# Iterate over items in candy hash and print
candy_hash.each do |key, value|
  puts "#{key}  $#{'%.2f' % value[0]} #{value[1].to_s}"
end

# Ask the user what they want
print "\nWhich option do you want?"
user_choice = gets.chomp.capitalize


# Decide if the user can afford the candy
item_price = candy_hash[user_choice][0]
if user_money < item_price
  puts "Sorry, you don't have enough money for that item!"
else
  user_money -= item_price
  puts "\nThank you!  Please take your candy and your $#{'%.2f' % user_money} change."
end
