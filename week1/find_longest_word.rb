# Complete the method called find_longest_word, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.


def find_longest_word(sentence)
  array = sentence.split
  longest_length = 0
  longest_word = ""
  array.each do |word|
    if word.length > longest_length
      longest_length = word.length
      longest_word = word
    end
  end
  return longest_word
end

# Driver code - don't touch anything below this line.
puts "TESTING find_longest_word..."
puts

result = find_longest_word("What is the longest word in this phrase?")

puts "Your method returned:"
puts result
puts

if result == "longest"
  puts "PASS!"
else
  puts "F"
end
