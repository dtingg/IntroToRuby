# Codecademy - Alphabetize

def alphabetize(arr, rev=false)
  arr.sort!

  if rev == true
    return arr.reverse!
  else
    return arr
  end
end

numbers = [6, 3, 4, 2, 1]

puts alphabetize(numbers, rev=true)
