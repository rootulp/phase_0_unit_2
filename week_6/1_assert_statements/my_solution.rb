# U2.W6: Testing Assert Statements

# I worked on this challenge by myself


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
#The assert method raises and "Assertion failed!" message if the block doesn't yield.

# 3. Copy your selected challenge here
class CreditCard
    def initialize(card)
        card = card.to_s
        if card.length > 16 || card.length < 16
            raise ArgumentError.new("Invalid card number")
        else
            @card = card.split(//) #Creates array of digits
        end
    end

    def check_card()
        digits = '' #Empty string
       @card.reverse.each_with_index do |d,i|
          digits[0,0] = d if i % 2 == 0 #Prepends current digit if doesn't need doubling
          digits[0,0] = (d.to_i * 2).to_s if i % 2 == 1 #Prepends doubled digit
        end
        @digits = digits.split(//)
        sum = 0
        @digits.each { |x| sum += x.to_i } 
        p sum
        return sum % 10 == 0 ? true : false
    end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
=begin
p CreditCard.new(1234567891234567).check_card() # false
p CreditCard.new(4408041234567893).check_card # true
p CreditCard.new(4408041234567892).check_card # false
p CreditCard.new(1111111111111111).check_card # false
=end



# 4. Convert your driver test code from that challenge into Assert Statements

def assert
    raise "Invalid Credit Card" if CreditCard.new(1234567891234567).check_card()
    raise "Invalid Credit Card" if CreditCard.new(4408041234567892).check_card()
    raise "Invalid Credit Card" if CreditCard.new(1111111111111111).check_card()
end
=begin
p CreditCard.new(1234567891234567).check_card() # false
p CreditCard.new(4408041234567893).check_card() # true
p CreditCard.new(4408041234567892).check_card() # false
p CreditCard.new(1111111111111111).check_card() # false
=end

# 5. Reflectiond
# Confused by this assignemnt. Not sure if I did it correctly. What's the difference between creating a method 'assert' versus driver tests?
