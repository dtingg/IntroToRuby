# Election Time
# Create an election program that accepts input from the user and outputs the winner of the election

# Welcome the user to your program
puts "Welcome to Dianna's Election Voting Program!"

# Print the election candidates
puts "\nElection candidates are: Charlie Brown, Linus, Lucy, and Snoopy."

# Make a hash to store the candidates
candidates_hash = {"Charlie Brown" => 0, "Linus" => 0, "Lucy" => 0, "Snoopy" => 0}

# Poll 10 people for their election vote
(1...10).each do |number|
  print "Vote #{number}: "
  vote = gets.chomp
  if candidates_hash.key?(vote)
    candidates_hash[vote] += 1

    # Handle write in candidates
  else
    candidates_hash[vote] = 1
  end
end

# Print the total votes cast as well as the winner of the election
puts "\nELECTION RESULTS"

# Candidate - x votes
puts candidates_hash


# Winner: x
# Handle ties for a winner appropriately
# Handle grammar of vote summary saying vote or votes appropriately



#Consider how to handle more than 10 votes
#Refactor your code so that your code is DRY (Don't Repeat Yourself)