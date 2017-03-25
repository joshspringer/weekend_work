# Complete the method called palindrome? which should accept a string as a parameter and return a boolean indicated whether the string is a palindrome. A palindrome is a word that reads the same both forwards and backwards. Examples: eye, madam, racecar
def reverse_a_string(string)
  new_string = []
  string_array = string.split("")
  string_array.each do |letter|
    new_string.unshift(letter)
  end
  return new_string.join
end

def palindrome?(string)
  reverse_a_string(string) == string
end

# Driver code - don't touch anything below this line.
puts "TESTING palindrome?"
puts

result = palindrome?("racecar")

puts "Your method returned:"
p result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = palindrome?("wazzzzup")

puts "Your method returned:"
p result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end
