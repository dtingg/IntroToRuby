"""
Candy machine assignment
This challenge is to build a computer candy machine. You’ve got some money and you want to buy some candy.
So, you go up to the candy machine, put in your money, select your candy, and then pick up your candy and your change.
"""
# Introduce game
puts "Welcome to Dianna's Computer Candy Machine! (All candy provided is virtual)"

# Ask the user how much money they have (include $ in the prompt)
# Do something appropriate when the buyer enters an invalid amount for the money.
print "\nHow much money do you have? $"
money = Float(gets.chomp)
while money <= 0
  puts "That's not a valid amount of money. Please try again: "
  money = Float(gets.chomp)
end

# print money amount and display all candy options (even if they can't afford it)
puts "\n$" + "%.2f" % money + ", that's all? Well, let me tell you what we have:"
puts "A   $1.00   Fruit Stripe"
puts "B   $2.00   Neccos"
puts "C   $5.00   Snickers"
puts "D   $7.00   Red Vines"
puts "E   $100.00 Jelly Bellys"

# Ask the user to make a selection
# Handle when the buyer enter C or c so that it works as expected
puts "\nSo, what are you in the mood for?"

choice = gets.chomp.upcase

# Do something appropriate when the buyer enters an invalid selection
candy_hash = {"A" => 1.00, "B" => 2.00, "C" => 5.00, "D" => 7.00, "E" => 100.00}

while ! candy_hash.key?(choice)
  puts "That's not a valid selection. Please try again:"
  choice = gets.chomp.upcase
end

# Decide whether the user can afford the candy or not. If they can't, tell them so.
# If they can afford it, calculate and display their change.

cost = candy_hash[choice]
change = money - cost

if money >= cost
  puts "Thanks for your purchase! Please take your candy and your $" + "%.2f" % change + " change!"
else
  puts "That's not enough money! Take your $" + "%.2f" % money + " and go elsewhere!"
end

puts "\nGame Over"

