"""
Ruby Program - Bake Sale Tracker
This program helps four friends track the money for their bake sale.
They are raising money for a local youth sports team.
Each friend is selling cookies and pound cakes door-to-door in their neighborhood.
"""

# Introduce the program
puts "Welcome to Dianna Tingg's Bake Sale Tracking Program!"
puts "Please enter the information below."

# Create global variables to keep track of overall stats
total_cookies_sold = 0
total_pound_cakes_sold = 0
total_cookies_unsold = 0
total_pound_cakes_unsold = 0

# Create a hash to store the amount of money raised by each friend
results = {}

# Declare variables for cookie and pound cake sell price and operating cost
# Cookies are sold for $2 each and cost $1 to make
# Pound cakes are sold for $6 each and cost $3 to make
cookie_sell_price = 2
cookie_op_cost = 1
pound_cake_sell_price = 6
pound_cake_op_cost = 3

# Get user input from each friend regarding the number of cookies and pound cakes (sold and unsold)
(1..4).each do |num|
  friend_id = "Friend #{num}"
  puts "\n#{friend_id}"

  print "Number of cookies sold: "
  begin
    cookies_sold = Integer(gets.chomp)
  rescue
    print "Error. Please enter an integer: "
    retry
  end
  total_cookies_sold += cookies_sold

  print "Number of pound cakes sold: "
  begin
    pound_cakes_sold = Integer(gets.chomp)
  rescue
    print "Error. Please enter an integer: "
    retry
  end
  total_pound_cakes_sold += pound_cakes_sold

  print "Number of cookies remaining unsold: "
  begin
    cookies_unsold = Integer(gets.chomp)
  rescue
    print "Error. Please enter an integer: "
    retry
  end
  total_cookies_unsold += cookies_unsold

  print "Number of pound cakes remaining unsold: "
  begin
    pound_cakes_unsold = Integer(gets.chomp)
  rescue
    print "Error. Please enter an integer: "
    retry
  end
  total_pound_cakes_unsold += pound_cakes_unsold

  # For each friend, calculate money earned and store in results hash
  earned = (cookies_sold * cookie_sell_price) + (pound_cakes_sold * pound_cake_sell_price)
  results[friend_id] = earned
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

# Calculate and print the total amount raised by selling cookies
cookie_sales = total_cookies_sold * cookie_sell_price
puts "Total amount raised by selling cookies: $#{"%.2f" % cookie_sales}"

# Calculate and print the total amount raised by selling pound cakes
pound_cake_sales = total_pound_cakes_sold * pound_cake_sell_price
puts "Total amount raised by selling pound cakes: $#{"%.2f" % pound_cake_sales}"

# Calculate and print the net amount raised overall
# Sum of profits from selling (cookies & pound cakes) minus cost of (all sold and unsold cookies & pound cakes)
gross_sales = (cookie_sales + pound_cake_sales)
total_cookie_op_cost = (total_cookies_sold + total_cookies_unsold) * cookie_op_cost
total_pound_cake_op_cost = (total_pound_cakes_sold + total_pound_cakes_unsold) * pound_cake_op_cost
net_sales = gross_sales - total_cookie_op_cost - total_pound_cake_op_cost

puts "Net amount raised overall: $#{"%.2f" % net_sales}"

# Say goodbye
puts "\nThank you for using my bake sale tracking program!"
