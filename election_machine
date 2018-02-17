"""
Election Time
You are going to create an electronic election program that tracks votes, total votes, and determines a winner."""

# Introduce the game
puts "Welcome to Dianna's Election Voting Program"

# Make a hash with the candidate names and print the keys
candidates = {"mickey" => 0, "donald" => 0, "goofy" => 0}

puts "\nElection candidates are:"

names = []
for n in (candidates.keys).map(&:capitalize)
  names.push(n)
end

print names.join(", ")
print " (or you can enter a write-in candidate)."

# Get 10 votes from the user using input
puts "\n\nBallots"

puts 'Enter your vote or type "end" when voting is over.'

(1..100).each do |number|
  print "Vote #{number}: "
  ballot = gets.chomp.downcase
  if ballot.downcase == "end" or ballot.downcase == '"end"'
    break
  end

  while ballot == ""
    print "That is not a valid choice. Please try again: "
    ballot = gets.chomp.downcase
  end

  if candidates.key?(ballot)
    candidates[ballot] += 1
  else
    candidates[ballot] = 1
  end

end

# Print election results with vote counts
puts "\nElection Results:"

candidates.each do |key, value|
  print "#{key.capitalize} - #{value} "
  if value == 1
    puts "vote"
  else
    puts "votes"
  end
end

max_num = candidates.values.max
max_candidates = candidates.select{|k,v| v== candidates.values.max}

winners = []
for n in (max_candidates.keys).map(&:capitalize)
  winners.push(n)
end

if max_candidates.length == 1
  puts "\nThe winner is: #{winners.join(", ")}!"
else
  puts "\nThere is a tie! The winners are: #{winners.join(", ")}!"
end
