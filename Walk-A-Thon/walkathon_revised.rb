# Walk-A-Thon
# Create a program for tracking a walk-a-thon

# Welcome the user to your program
puts "Welcome to Dianna's Walk-A-Thon Tracker!"

# Earning goal for the walk-a-thon
print "\nEnter the earning goal for this event: $"
goal = gets.chomp.to_f

# Amount earned per lap completed (per person)
print "Enter the amount earned per lap (per person): $"
per_lap = gets.chomp.to_f

# Enter the number of laps completed or type Q when finished
puts "\nPlease enter information for each walker or type Q when finished."

# Create a hash to hold walker names and amount raised by each
results = {}

loop do
  # Get walker name from user
  print "\nWalker name: "
  name = gets.chomp.capitalize
  # If user entered q, then stop
  if name == 'Q'
    break
  end
  # Get laps completed from user
  print 'Laps completed: '
  laps = gets.chomp.to_i
  results[name] = laps
end

# Print who earned the most money
max_laps = results.values.max

max_walkers = []
for k, v in results
  if v == max_laps
    max_walkers.append(k)
  end
end

if max_walkers.length == 1
  print "\nHighest Earner: "
else
  print 'Highest Earners: '
end

puts max_walkers.join(', ')

# Print total amount raised
print 'Total amount earned: $'

total_laps = 0

for k, v in results
  total_laps += v
end

total_money = total_laps * per_lap

puts "%.2f" % total_money

# Was the earning goal met?
print 'Goal met? '
if goal < total_money
  print 'Yes'
else
  difference = goal - total_money
  print "No. You missed the goal by $#{"%.2f" % difference}."
end
