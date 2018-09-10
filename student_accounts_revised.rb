# Student Account Generator
# Generate some student information

# Introduce the program
puts "Welcome to the Student Account Generator\n"
puts "\n"

# Create three arrays
students = []
ids = []
emails = []

# Write a times loop that asks the user to enter 5 student names.
# Store in proper array in all uppercase
5.times do
  print "Enter a student's first and last name: "
  students.push(gets.chomp.upcase)
end

# Write a times loop to generate random student ID numbers from 111111 to 999999
# Store these in the proper array
5.times do
  test = 0

  # Make sure id doesn't already exist
  until test != 0 && !ids.include?(test) do
    test = rand(111111..999999)
  end
  ids.push(test)
end

# Write a times loop to generate student email addresses:
# firstinitial+lastname+last3ofstudentid@adadevelopersacademy.org
def get_first_initials(student_name)
  name_parts = student_name.split
  first_initials = ""

  i = 0
  while i != name_parts.length-1 do
    first_initials += name_parts[i][0]
    i += 1
  end
  return first_initials
end

5.times do |i|
  email = get_first_initials(students[i]) + students[i].split.last + ids[i].to_s.slice(-3..-1) + "@adadevelopersacademy.org"
  emails.push(email)
end

# Print out all the student names, id numbers, and e-mail adddresses in parallel
print "\n"

5.times do |i|
  puts "Student: #{students[i]}, ID: #{ids[i]}, E-mail: #{emails[i]}"
end