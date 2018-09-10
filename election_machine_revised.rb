# Election Time
# Election program that accepts input from the user and outputs the winner

# Welcome the user to your program
puts "Welcome to Dianna's Election Voting Program!"

# Make a hash to store the candidates
candidate_hash = { Charlie: 0, Linus: 0, Lucy: 0, Snoopy: 0 }

# Print the election candidates
puts "\nElection candidates are: #{candidate_hash.keys.join(", ")}."
puts 'Enter your vote or type Q to exit.'
puts "\n"

# Poll people for their election vote until someone types q
counter = 1

loop do
  print "Vote #{counter}: "
  vote = gets.chomp.capitalize.to_sym

  # Q means break loop
  if vote == :Q
    break

    # if candidate in hash, add one to vote count
  elsif candidate_hash.key?(vote)
    candidate_hash[vote] += 1

    # otherwise it is a write-in.  add to hash and set votes to 1
  else
    candidate_hash[vote] = 1
  end

  # increment vote number
  counter += 1
end

# Print the total votes cast as well as the winner of the election
puts "\nELECTION RESULTS"

# Iterate over each key and value in hash
candidate_hash.each do |key, value|
  print "#{key} - #{value} "

  # If they only have 1, say vote. Otherwise, say votes
  if value == 1
    puts 'vote'
  else
    puts 'votes'
  end
end

# Determine the winner - find the max number of votes
max_votes = candidate_hash.values.max

# Create new array to hold winners
winners_list = []

# if candidate has max votes, add to winners list
candidate_hash.each do |key, value|
  winners_list.push(key.to_s) if value == max_votes
end

# Print the winner
if winners_list.length == 1
  print "\nThe winner is: " + winners_list[0]
else
  print "\nIt's a tie!  The winners are: #{winners_list.join(', ')}"
end