# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

def find_missing_letter(range)
  missing_letters = []
  array = range.split("")
  prev_letter = array.shift
  # p prev_letter
  array.each do |letter|
    if letter != prev_letter.next
      missing_letters << prev_letter.next
    end
    prev_letter = letter
  end
  if missing_letters != []
    p missing_letters.join
  else nil
  end
end

# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end
