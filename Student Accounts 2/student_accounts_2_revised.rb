# Student Account Generator Continued
# Refactor code to utilize hashes

# Introduce the program
puts "Welcome to the Student Account Generator\n"
puts "\n"

# Create one array that holds hashes
$student_data = []

# Function to create a hash for each student
def student_entry(student_name)
  name = student_name
  id = get_id
  email = get_email(student_name, id)

  hash = {name: name, id: id, email: email}
  return hash
end

# Function to get student id
def get_id
  test = 0

  # Make sure id doesn't already exist
  until test != 0 && !$student_data.include?(test)
    test = rand(111111..999999)
  end
  return test
end

# Function to get username
def username(student_name)
  name_parts = student_name.split
  username = ""

  i = 0
  while i != name_parts.length-1 do
    username.concat(name_parts[i][0])
    i += 1
  end

  username.concat(name_parts[-1])
  return username
end

# Function to get email
def get_email(student_name, id)
  email = username(student_name) + id.to_s.slice(-3..-1) + "@adadevelopersacademy.org"
  return email
end

# Ask user to enter a student name
loop do
  print "Enter a student's first and last name for type Q to quit: "
  student = gets.chomp.upcase
  if student == "Q"
    break
  end
  $student_data << student_entry(student)
end

# Print out all the student names, id numbers, and e-mail addresses in parallel
puts "\nStudent Roster:"

for h in $student_data
  puts "Student: #{h[:name]}, ID: #{h[:id]}, E-mail: #{h[:email]}"
end
