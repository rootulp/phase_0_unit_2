# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# An array
# What is the output? (i.e. What should the code return?)
# Return a letter grade
# What are the steps needed to solve the problem?
# Define method get_grade that takes one argument (array)
# Find the average of the array and depending on that, return a letter grade that corresponds to the value

# 2. Initial Solution
# def get_grade(x)
#     average = x.inject(0.0) { |sum, el| sum + el } / x.size
#     if average >= 90
#         return "A"
#     elsif average >= 80
#         return "B"
#     elsif average >= 70
#         return "C"
#     elsif average >= 60
#         return "D"
#     else 
#         return "F"
#     end      
# end

# 3. Refactored Solution
def get_grade(x)
    average = x.inject(0.0) { |sum, el| sum + el } / x.size
    if average >= 90
        return "A"
    elsif average >= 80
        return "B"
    elsif average >= 70
        return "C"
    elsif average >= 60
        return "D"
    else 
        return "F"
    end      
end

# 4. Reflection 
# I enjoyed this challenge. I think it was easier than the easy challenge though. Maybe someone should swap the two. 