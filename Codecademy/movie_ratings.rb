# Codecademy - Movie Ratings

movies = {thing: 5}

puts "Enter a choice "
choice = gets.chomp

case choice
when "add"
  puts "Enter a movie title: "
  title = gets.chomp.to_sym

  puts "Enter a rating: "
  rating = gets.chomp.to_i

  if movies[title] != nil
    puts "That movie already exists"
  else
    movies[title] = rating
  end

when "update"
  puts "Enter a movie: "
  title = gets.chomp.to_sym

  if movies[title] == nil
    puts "That movie doesn't exist."
  else
    puts "Enter a rating: "
    rating = gets.chomp.to_i
    movies[title] = rating
  end

when "display"
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end

when "delete"
  puts "Enter a movie: "
  title = gets.chomp.to_sym

  if movies[title] == nil
    puts "Error!"
  else
    movies.delete(title)
  end

else
  puts "Error!"

end

puts movies
