# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# Arrays are inputs for total
# Sentences are inputs for sentence_maker
# What is the output? (i.e. What should the code return?)
# total should return the sum of all the entrys in the array
# sentence_maker should return a gramatically correct sentence
# What are the steps needed to solve the problem?
# Define two Arrays
# Define method total that has a single argument (array)
# Compute the sum of the array
# return sum

# Define two arrays of words that create a sentence
# Define method sentence_maker that has a single argument (array)
# Concatenate the strings of the array
# return the string

# 2. Initial Solution
# def total (x)
#     final = 0
#     x.each do |current| 
#         final += current
#     end
#     puts final
#     return final
# end

# def sentence_maker (x)
#     sentence = ""
#     x.each do |current|
#         word = current.to_s + " "
#         sentence += word
#     end
#     sentence = sentence[0...-1]
#     sentence += "."
#     sentence = sentence.capitalize!
#     return sentence
# end

# x = ["hi", "this", "is", 564, "me"]
# puts sentence_maker(x)
# 3. Refactored Solution
def total (x)
    final = 0
    x.each do |current| 
        final += current
    end
    return final
end

def sentence_maker (x)
    sentence = ""
    x.each do |current|
        word = current.to_s + " "
        sentence += word
    end
    sentence = sentence.capitalize![0...-1] + "."
    return sentence
end

# 4. Reflection 
# I really enjoy working with rspec and tests to build code. I ran into a bit of trouble with sentence_maker especially with things like:
#     -removing the last space
#     -adding a period
#     -capitalizing the first letter
# Overall I really enjoyed this exercise though. I'll try to attempt all the other ones.