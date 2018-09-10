"""
Ruby Program - Bake Sale Tracker Unlimited
This program helps friends track the money for their bake sale.
They are raising money for a local youth sports team.
You can customize the baked items for sale and enter an unlimited number of friends.
"""

# Introduce the program
puts "Welcome to Dianna Tingg's Unlimited Bake Sale Tracking Program!"
puts "Please enter the information below."

# Make a hash for baked goods. Get user input for item name, sell price, and operating cost.
# key = item name, value = [0]sell price, [1]op cost, [2]total sold, [3]total unsold
baked_goods = {}

# Create a variable for item name
item = ""

# Accept new items until the user types done
until item == "done"
  print "\nEnter the name of a baked good (or type done): "
  item = gets.chomp

  until item != "" and not item.to_s.strip.empty?
    print "Error. Please enter the name of a baked good (or type done): "
    item = gets.chomp
  end

# Make sure they enter at least one baked good
  if item == "done" and baked_goods.length > 0
    break

  elsif item == "done" and baked_goods.length == 0
    until item != "done" and item != "" and not item.to_s.strip.empty?
      print "Error. Please enter at least one baked good: "
      item = gets.chomp
    end
  end

  print "What is the item's sell price? $"
  begin
    sell_price = Float(gets.chomp)
  rescue
    print "Error. Please enter numbers and decimals only: $"
    retry
  end

  print "What is the item's operating cost? $"
  begin
    op_cost = Float(gets.chomp)
  rescue
    print "Error. Please enter numbers and decimals only: $"
    retry
  end

  baked_goods[item] = sell_price, op_cost, 0, 0
end

# Create a hash to store the amount of money raised by each friend.
# key = friend name, value = money raised (default is 0)
results = Hash.new(0)

# Create a variable for friend name
friend_id = ""

# Accept new users until the user types done
until friend_id == "Done"
  print "\nFriend name (or type done): "
  friend_id = gets.chomp.capitalize

  until friend_id != "" and not friend_id.to_s.strip.empty?
    print "Error. Please enter a friend name (or type done): "
    friend_id = gets.chomp.capitalize
  end

  # Make sure they enter at least one friend name
  if friend_id == "Done" and results.length > 0
    break

  elsif friend_id == "Done" and results.length == 0
    until friend_id != "Done" and friend_id != "" and not friend_id.to_s.strip.empty?
      print "Error. Please enter at least one friend name: "
      friend_id = gets.chomp.capitalize
    end
  end

  # For each baked good, ask for the number sold and unsold
  baked_goods.each do |key, array|
    print "#{key}s - number sold: "
    begin
      sold = Integer(gets.chomp)
    rescue
      print "Error. Please enter an integer: "
      retry
    end

    baked_goods[key][2] += sold
    results[friend_id] += sold * baked_goods[key][0]

    print "#{key}s - number unsold: "
    begin
      unsold = Integer(gets.chomp)
    rescue
      print "Error. Please enter an integer: "
      retry
    end

    baked_goods[key][3] += unsold

  end
end

# Print a summary
puts "\nSUMMARY"

# Calculate and print the total amount raised by each friend
puts "Money raised by each person:"

results.each do |key, value|
  puts "\t#{key}: $#{"%.2f" % value}"
end

# Calculate and print which friend raised the most overall
max_amount = results.values.max
max_seller = results.select {|k, v| v == max_amount}

# In case of a tie, return all max sellers
if max_seller.length == 1
  puts "Person who raised the most money overall: #{max_seller.keys.join("")}"
else
  puts "People who raised the most money overall: #{max_seller.keys.join(", ")}"
end

# For each item, calculate the money raised and the operating costs
amounts_raised = []
operating_costs = []

baked_goods.each do |key, array|
  raised = Float(baked_goods[key][0]) * Integer(baked_goods[key][2])
  amounts_raised.push raised

  costs = baked_goods[key][1] * (baked_goods[key][2] + baked_goods[key][3])
  operating_costs.push costs
  puts "Total amount raised by selling #{key}s: $#{"%.2f" % raised}"
end

# Gross sales = sum of elements in amounts_raised array
gross_sales = amounts_raised.inject(:+)

# Calculate operating costs
total_operating_costs = operating_costs.inject(:+)

# Calculate and print the net amount raised overall (gross sales - operating costs)
net_sales = gross_sales - total_operating_costs
puts "Net amount raised overall: $#{"%.2f" % net_sales}"

# Say goodbye
puts "\nThank you for using my ultimate bake sale tracking program!"

