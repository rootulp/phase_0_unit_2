# U2.W6: Drawer Debugger


# I worked on this challenge [by myself, with: ].


# 2. Original Code

class Drawer

    attr_reader :contents
     # Are there any more methods needed in this class?
    def initialize
        @contents = []
        @open = true
    end

    def open
        @open = true
    end

    def close
        @open = false
    end 

    def add_item(item)
        @contents << item
    end

    def remove_item(item = @contents.pop) #what is `#pop` doing?
        if item != nil
            @contents.delete(item)
        end
    end

    def dump  # what should this method return?
        puts "Your drawer is empty."
    end

    def view_contents
        puts "The drawer contains:"
        @contents.each {|silverware| puts "- " + silverware.type }
    end

end

class Silverware
    attr_reader :type

    # Are there any more methods needed in this class?

    def initialize(type, clean = true)
        @type = type
        @clean = clean
    end

    def eat
        puts "eating with the #{type}"
        @clean = false
    end

    def clean_silverware
        puts "Cleaned your silverware"
        @clean = true
    end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 

p silverware_drawer.open
# I created a fork and spoon object
fork=Silverware.new("fork")
silverware_drawer.add_item(fork)
spoon=Silverware.new("spoon")
silverware_drawer.add_item(spoon)
silverware_drawer.view_contents


silverware_drawer.remove_item
silverware_drawer.view_contents

sharp_knife = Silverware.new("sharp_knife")
silverware_drawer.add_item(sharp_knife)
silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents

fork.eat
fork.clean_silverware

#BONUS SECTION
# puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end

testsilverware = Silverware.new("spork")
testdrawer = Drawer.new
assert {testdrawer.open == true }
assert {testdrawer.close == false }
assert { testsilverware.clean_silverware == true }

# 5. Reflection 
# I didn't enjoy this challenge. I ended up having to look at other student's answers to comprehend what was 
# going on. The directions seemed really unclear and the given tests were poorly labeled. Didn't really learn much 
# either.