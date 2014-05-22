# U2.W5: Die Class 2: Arbitrary Symbols

# I worked on this challenge by myself

# 2. Pseudocode

# Input:
# labels is an array of strings
# Output:
# sides returns number of strings in labels array
# roll returns a random string from labels array
# Steps:

# 3. Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    if @labels.size < 1 
        raise ArgumentError.new("Die can't have less than 1 side.")
    end 
  end

  def sides
    return @labels.size
  end

  def roll
    return @labels.sample
  end
end

# 4. Refactored Solution
# Refactored above

# 1. DRIVER TESTS GO BELOW THIS LINE
p Die.new(["A", "B", "C"]).sides == 3
p Die.new(["A"]).roll == "A"
test_array = ["A", "B", "C", "D", "E", "F"]
test_value = Die.new(test_array).roll
p test_array.include? test_value

# 5. Reflection 
# Enjoyed this project as well. It was pretty similar to 1_die. Didn't
# learn anything new.