require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def sqaure(number, square)
    return number * square
  end

  def power(number, exponent)
    return number ** exponent
  end

  def sum_of_three(number)
    sum = 0
    numbers.each do |number|
      sum += numbers 
    end

   def square_root(number)
   Math.sqrt(number)
    end

    def remainder(dividend,. divisor)
      difference = dividend
      until difference < divisor 
      divident % divisor 
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
  end

  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(2, 1)
      expect(result).to eq(1)
    end
  end


  describe '#multiply' do
   it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(3, 2)
      expect(result).to eq(6)
   end
 end

  describe '#divide' do
   it 'should return the remander of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(6, 2)
      expect(result).to eq(3)
   end
 end
    

  describe '#sqaure' do
   it 'should return the square of two numbers' do
      calculator = Calculator.new
      result = calculator.sqaure(3, 1)
      expect(result).to eq(3)
    end
  end

  describe '#power' do
   it 'should return the power of two numbers' do
      calculator = Calculator.new
      result = calculator.power(1, 2)
      expect(result).to eq(1)
   end
 end 

  describe '#sum_of_three' do 
    it 'should return the product of three number' do
      calculator = Calculator.new
      result = calculator.sum_of_three(1, 4, 5)
      expect(result).to eq(10)
    end
  end
   describe '$square_root' do
    it 'should return the squareb root of a number' 
    calculator = Calculator.new
    result 

   describe '#remainder' do
    
   end
end


