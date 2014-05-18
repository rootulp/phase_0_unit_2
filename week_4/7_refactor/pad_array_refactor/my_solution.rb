# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge by myself.
# I looked at work from Alan Florendo and Andrew Adams


# 1. First Person's solution I liked
#    What I learned from this solution - Alan loves to use the << operator. It makes things really easy to read and his code look sucinct and simple.
# Copy solution here:
class Array
    def pad! (needed_length, pad_value=nil)
        while self.length < needed_length
            self << pad_value
        end
        self
    end

    def pad (needed_length, pad_value=nil)
        new_array = self.dup
        while new_array.length < needed_length
            new_array << pad_value
        end
        return new_array
    end
end


# 2. Second Person's solution I liked
#    What I learned from this solution - I'm honestly kind of confused by this solution. the if num>size self part looks kind of strange but it works.
# Copy solution here:
class Array

    def pad_original!(num, padding=nil)
        (num-size).times { self << padding } if num > size
        self
    end

    def pad(num, padding=nil)
        Array.new(self).pad!(num, padding)
    end

    def pad!(num, padding=nil)
        self.concat(Array.new(num-size, padding)) if num > size
        self
    end
end



# 3. My original solution:
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

# 4. My refactored solution:
# I learned a lot from Alan's code but I don't think I can really adapt his tricks to my solution so my refactored code remains the same.

# 5. Reflection
# I liked the idea behind this project. Although I didn't make any changes, it's interesting and enlightening to read other people's code.