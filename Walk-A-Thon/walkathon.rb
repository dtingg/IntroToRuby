"""
Assignment: Walk-a-thon
You are going to create a program for tracking a walk-a-thon.
"""
# Welcome user to the game
puts "Welcome to Dianna's Walk-A-Thon Tracker!"
puts "Our goal is to raise money for a good cause."

# Let user enter a goal for the walk-a-thon
print "\nEnter the earning goal for this event: $"
goal = gets.chomp.to_f

# Let user enter the amount earned per lap completed (per person)
print "Enter the amount earned per lap (per person): $"
per_lap = gets.chomp.to_f

# Let user enter number of laps completed by each person (5 people)
puts "\nPlease enter the number of laps completed by each person:"

results = {}

(1..5).each do |i|
  walker_id = "Walker #{i}"
  print "#{walker_id}: "
  actual_laps = gets.chomp.to_f
  earned = "%.2f" % (actual_laps * per_lap)
  puts "\tEarned $#{earned}"
  results[walker_id] = earned.to_f
end

# Determine who earned the most money (3)
max_num = results.values.max
max_walker = results.select{|k, v| v == results.values.max}

if max_walker.length == 1
  puts "\nHighest Earning Person: #{max_walker.keys.join(" ")}"
else
  puts "\nHighest Earning People: #{max_walker.keys.join(", ")}"
end

# Determine the total amount earned for the walk-a-thon ($)
print "Total amount earned: "
amounts = results.values
total = amounts.inject{ |sum,x| sum + x }
puts "$ #{"%.2f" % total}"

# Determine if the earning goal was met (Yes :-) or No :-()
puts "Goal Met?"

if total >= goal
  puts "Yes! :-) You beat the goal by $#{"%.2f" % (total - goal).to_f}!"
else
  puts "No. :-( You missed the goal by $#{"%.2f" % (goal - total).to_f}."
end









