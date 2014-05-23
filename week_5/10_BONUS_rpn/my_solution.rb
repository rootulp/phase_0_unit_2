# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge: Rootul and Fahia

# 2. Pseudocode

# Input:
# String of numbers and operators
# Output:
# A string with the correct computed value
# Steps:
# Create methods for each operator
# Create a stack to house numbers
# Create a stack to house operators
# Recursivley pop two numbers when operator stack isn't empty (and operate)


# 3. Initial Solution

# class RPNCalculator
#   def add(int1, int2)
#   result = int1 + int2 
#   end
  
#   def multiply(int1, int2)
#   multiply = int1 * int2 
#   end
  
#   def divide(int1, int2)
#   result = int1 / int2
#   end
  
#   def subtract(int1, int2)
#   subtract = int1 - int2 
#   end

#   def evaluate(input)
#     array = input.split()
#     p array
#     operators = ["+", "*", "-", "/"]
#     numbers = ("0".."9").to_a
#     number_array = []
#     operator_array = []
#     array.each do |x|
#       if operators.include?(x)
#         operand = x
#         int2 = number_array.pop().to_i 
#         int1 = number_array.pop().to_i 
#         case operand 
#         when "+" 
#           temp = add(int1, int2)
#         when "-" 
#           temp = subtract(int1,int2)
#         when "*" 
#           temp = multiply(int1,int2) 
#         when "/"
#           temp = divide(int1,int2) 
#         end
#         number_array.push(temp)
#       elsif x.to_i.is_a? Integer
#         number_array.push(x)
#       else
#         raise ArgumentError.new("This is a invalid input")
#       end
#     end
#     result = number_array[0].to_i
#         result
#   end
  
# end

# 4. Refactored Solution

class RPNCalculator
  def evaluate(input)
    array = input.split()
    operators = ["+", "*", "-", "/"]
    numbers = []
    array.each do |x|
      if operators.include?(x)
        int2 = numbers.pop().to_i 
        int1 = numbers.pop().to_i 
        result = int1 + int2 if x == "+"
        result = int1 - int2 if x == "-"
        result = int1 * int2 if x == "*"
        result = int1 / int2 if x == "/"
        numbers << result
      elsif x.to_i.is_a? Integer
        numbers << x 
      else 
         raise ArgumentError.new("This is a invalid input")
      end
    end
    numbers[0].to_i #result
   end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
calc = RPNCalculator.new 
calc.evaluate('70 10 +') == 80
calc.evaluate('10 5 -') == 5
calc.evaluate('20 5 /') == 4
calc.evaluate('4 10 *') == 40
calc.evaluate('70 10 4 + 5 * -') == 0 



# 5. Reflection 
# Really enjoyed working on this project. Fahia was a great pair. Our refactored code was a huge improvement on our initial solution. 
# Had trouble with order of operations (essentially poping vs. shifting) but ended up figuring it out after trial and error.