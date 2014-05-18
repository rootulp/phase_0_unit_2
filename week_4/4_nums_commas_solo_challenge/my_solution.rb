# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# Input is an integer
# What is the output? (i.e. What should the code return?)
# Output should be a string of the exact same integer with commas
# What are the steps needed to solve the problem?
# Determine how long the integer is. Add commas in appropriate places based on length

# 2. Initial Solution

def separate_comma(x)
    x_string = x.to_s
    x_length = x_string.length
    if x_length <= 3
        return x_string
    elsif x_length % 3 == 1
        x_pre_string = x_string[0]
        x_post_string = x_string[1..-1]
        result = x_pre_string + "," + separate_comma(x_post_string)
        return result
    else
        x_pre_string = x_string[0]
        x_post_string = x_string[1..-1]
        result = x_pre_string + separate_comma(x_post_string)
        return result
    end
end

# Tests
# puts separate_comma(1)
# puts separate_comma(10)
# puts separate_comma(100)
# puts separate_comma(1000)
# puts separate_comma(10000)

# 3. Refactored Solution
# Refactored above

# 4. Reflection 
# I enjoyed this solo assignment. I implemented a recurisve solution because it made sense to cut down each digit of the initial integer and feed it back in.