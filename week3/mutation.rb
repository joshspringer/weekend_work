

def mutation?(word1,word2)
  x = true
  word2.split("").each do |letter|
    x = false if !word1.split("").include?(letter)
  end
  p x
end

mutation?("burly", "ruby")    #=> true
mutation?("burly", "python")  #=> false
