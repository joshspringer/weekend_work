# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module SimpleCalculator

  def SimpleCalculator.add(first_number, second_number)
    first_number + second_number
  end

  def SimpleCalculator.subtract(first_number, second_number)
    first_number - second_number
  end

  def SimpleCalculator.multiply(first_number, second_number)
    first_number * second_number
  end

  def SimpleCalculator.divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator
  include SimpleCalculator

  def add(first_number, second_number)
    SimpleCalculator.add(first_number, second_number)
  end

  def subtract(first_number, second_number)
    SimpleCalculator.subtract
  end

  def multiply(first_number, second_number)
    SimpleCalculator.multiply
  end

  def divide(first_number, second_number)
    SimpleCalculator.divide
  end

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:
calc = FancyCalculator.new

if calc.add(2, 6) == 8
  p 'PASS!'
else
  p 'FAIL!'
end

if calc.square_root(64) == 8
  p 'PASS!'
else
  p 'FAIL!'
end

