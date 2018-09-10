"""
Assignment: Student Account Generator Continued
Refactor code to utilize arrays with hashes

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

# Create an array to store student data
student_data = []

# Loop over hashes and append to student_data
5.times do |x|
  student_data << {"Student" => students[x],  "ID" => ids[x], "E-mail" => emails[x]}
end

# Print out student roster
puts "Student Roster"
puts student_data
