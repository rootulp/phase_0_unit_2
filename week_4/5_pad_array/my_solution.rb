# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# Array, Input to pad! and pad is length of new array and optional pad value
# What is the output? (i.e. What should the code return?)
# Output is an array of appropriate size based on length and pad value supplied
# What are the steps needed to solve the problem?
# See below

# 2. Initial Solution
# class Array
#     def pad! (new_length, new_value=nil)
#         while self.length < new_length
#             self << new_value
#         end
#         self
#     end

#     def pad (new_length, new_value=nil)
#         new_array = self.dup
#         while new_array.length < new_length
#             new_array << new_value
#         end
#         return new_array
#     end
# end


class Array 
    def pad(new_length, new_value=nil)
        new_array = self.clone
        if new_length <= self.length
            return new_array
        else
            push_num = new_length - self.length
            push_num.times{|x| new_array.push(new_value)}
            new_array
        end 
    end

    def pad!(new_length, new_value=nil)
        if new_length <= self.length 
            return self 
        else
            push_num = new_length - self.length 
            push_num.times{|x| self.push(new_value)}
            return self
        end
    end
end

# 3. Refactored Solution
# Refactored above


# 4. Reflection 
# I didn't like this problem. I found the class Array thing confusing mostly because I'm confused by classes.