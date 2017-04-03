# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.

def is_prime?(number)
  for i in 2..(number-1)
    if (number % i) == 0
      return false
      break
    end
  end
  true
end

# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the
# highest prime number under 10 is 7.

def highest_prime_number_under(number)
  counter = number
  number.times do
    if is_prime?(counter)
      p counter
      break
    else
      counter -= 1
    end
  end
end

p is_prime?(9)
p is_prime?(5)
p is_prime?(6)
p is_prime?(7)

highest_prime_number_under(100)
