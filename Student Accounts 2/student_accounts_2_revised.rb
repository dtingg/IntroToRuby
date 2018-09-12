# Student Account Generator Continued
# Refactor code to utilize hashes

# Introduce the program
puts "Welcome to the Student Account Generator\n"
puts "\n"

# Create one array that holds hashes
student_data = []

# Function to create a hash for each student
def student_entry(student_name, student_data)
  name = student_name
  id = get_id(student_data)
  email = get_email(name, id)

  hash = { name: name, id: id, email: email }
end

# Function to get student id
def get_id(student_data)
  unique = false

  until unique
    test = rand(111111..999999)
    unique = check_id(test, student_data)
  end
  return test
end

# Function to check id
def check_id(test, student_data)
  if student_data.empty?
    return true
  end

  for i in student_data
    if i[:id] == test
      return false
    end
  end
  return true
end

# Function to get username
def username(student_name)
  name_parts = student_name.split
  username = ''

  i = 0
  while i != name_parts.length - 1 do
    username += name_parts[i][0]
    i += 1
  end

  username += name_parts[-1]
end

# Function to get email
def get_email(student_name, id)
  email = username(student_name) + id.to_s.slice(-3..-1) + "@adadevelopersacademy.org"
end

# Ask user to enter a student name
loop do
  print "Enter a student's first and last name for type Q to quit: "
  student = gets.chomp.upcase
  if student == 'Q'
    break
  end
  student_data << student_entry(student, student_data)
end

# Print out all the student names, id numbers, and e-mail addresses in parallel
puts "\nStudent Roster:"

for h in student_data
  puts "Student: #{h[:name]}, ID: #{h[:id]}, E-mail: #{h[:email]}"
end