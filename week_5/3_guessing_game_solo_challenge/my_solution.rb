# U2.W5: Build a simple guessing game SOLO CHALLENGE

# I worked on this challenge by myself.

# 2. Pseudocode

# Input:
# GuessingGame.new will take an integer that is the solution
# Guess wil take integer guesses
# Output:
# solved? returns true if guess_val == answer
# solved? returns false if guess_val != answer
# guess returns :low, :high, or :correct
# Steps:
# Initialize declares instance variables for answer and solved
# Solve should just returen solved
# Guess should evaluate @answer against @guess_val and
# return the correct response (:low, :high, :correct)

# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end
  
  def solved?
    return @solved
  end

  def guess(guess_val)
    @guess_val = guess_val
    if @answer > @guess_val
        @solved = false
        return :low
    elsif @answer < @guess_val
        @solved = false
        return :high
    else
        @solved = true
        return :correct
    end
  end

end

# 4. Refactored Solution
# Refactored above

# 1. DRIVER TESTS GO BELOW THIS LINE
game = GuessingGame.new(21)
puts game.guess(0)   == :low
puts game.guess(50) == :high
puts game.guess(21)  == :correct

# 5. Reflection 
# Ended up having some trouble with the rspec test for "guess
# reflects the last guess" solved? should have been changed to
# false, but is now true. Then I realized I needed to declare
# @solved to false on line 35 and 38.
