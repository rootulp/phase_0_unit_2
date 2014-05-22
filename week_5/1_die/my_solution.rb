# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
        raise ArgumentError.new("Die can't have less than 1 side.")
    end
    @sides = sides
  end
  
  def sides
    return @sides
  end
  
  def roll
    return 1 + rand(@sides)
  end
end

# 4. Refactored Solution
# Refactored above.

# 1. DRIVER TESTS GO BELOW THIS LINE
p Die.new(3).sides == 3
p Die.new(1).roll == 1
test_array = [1,2,3,4,5,6]
test_value = Die.new(6).roll
p test_array.include? test_value

# 5. Reflection 
# Enjoyed this project. Helped me understand classes.
# Still tough to implement driver tests from rspec code.