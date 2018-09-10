"""
Assignment: Student Account Generator
We are going to write a program that generates some student information.
"""
# Introduce the program
puts "Student Account Generator"

# Create three arrays
students = []
ids = []
emails = []

# Create a times loop that asks the user to enter in 5 student names (first and last)
# Store values in students array in all uppercase
5.times do
  print "Enter a student's first and last name: "
  students.push(gets.chomp.upcase)
end

# Create a times loop to generate random student id numbers from 111111 to 999999
# Store values in ids array
5.times do
  ids.push(rand(111111..999999))
end

# Write a times loop to generate student email addresses
# format is (firstinital)+(lastname)+(last3digitsofid)+ (@adadevelopersacademy.org)
5.times do |x|
  email = students[x][0] + students[x].split.last + ids[x].to_s.slice(-3..-1) + "@adadevelopersacademy.org"
  emails.push(email)
end

# Print out all the student names, ids, and e-mail addresses in parallel
5.times do |x|
  puts "Student: #{students[x]}, ID: #{ids[x]}, E-mail: #{emails[x]}"
end
