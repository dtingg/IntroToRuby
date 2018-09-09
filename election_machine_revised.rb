# Election Time
# Election program that accepts input from the user and outputs the winner

# Welcome the user to your program
puts "Welcome to Dianna's Election Voting Program!"

# Print the election candidates
puts "\nElection candidates are: Charlie, Linus, Lucy, and Snoopy."
puts 'Enter your vote or type Q to exit.'
puts "\n"

# Make a hash to store the candidates
candidates_hash = { Charlie: 0, Linus: 0, Lucy: 0, Snoopy: 0 }

# Poll people for their election vote until someone types q
counter = 1

loop do
  print "Vote #{counter}: "
  vote = gets.chomp.capitalize.to_sym

  # Q means break loop
  if vote == :Q
    break

  # if candidate in hash, add one to vote count
  elsif candidates_hash.key?(vote)
    candidates_hash[vote] += 1

  # otherwise it is a write-in.  add to hash and set votes to 1
  else
    candidates_hash[vote] = 1
  end

  # increment vote number
  counter += 1
end

# Print the total votes cast as well as the winner of the election
puts "\nELECTION RESULTS"

# Iterate over each key and value in hash
candidates_hash.each do |key, value|
  print "#{key} - #{value} "
  
  # If they only have 1, say vote. Otherwise, say votes
  if value == 1
    puts "vote"
  else
    puts "votes"
  end
end

# Determine the winner - find the max number of votes
max_votes = candidates_hash.values.max

# Create new array to hold winners
winners_list = []

# if candidate has max votes, add to winners list
candidates_hash.each do |key, value|
  if value == max_votes
    winners_list.push (key.to_s)
  end
end

# Print the winner
if winners_list.length == 1
  print "The winner is : " + winners_list[0]
else
  print "It's a tie!  The winners are: " + winners_list.to_s
end