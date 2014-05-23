# U2.W5: Class Warfare, Validate a Credit Card Number

# I worked on this challenge by myself.

# 2. Pseudocode

# Input:
# List of integers
# Output:
# check_card should return true or false
# Steps:
# 1.Starting with the second to last digit, double every other digit until you reach the first digit
# 2.Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0)
# 3.If the total is a multiple of ten, you have received a valid credit card number!

# 3. Initial Solution

# class CreditCard
#     def initialize(card_num)
#         card_str = card_num.to_s
#         if card_str.length > 16
#             raise ArgumentError.new("Card number can't be more than 16 digits")
#         elsif  card_str.length < 16
#             raise ArgumentError.new("Card number can't be more than 16 digits")
#         else
#             @card_arr = card_str.split(//)
#         end
#     end

#     def check_card()
#         counter = 15
#         card_arr_double = []
#         while counter != -1 do
#             temp = @card_arr[counter]
#             if counter % 2 == 0
#                 temp = temp.to_i * 2
#                 temp = temp.to_s
#             end
#             card_arr_double[counter] = temp
#             counter -= 1
#         end
#         card_str_double = card_arr_double.join()
#          final_card_arr = card_str_double.split(//)
#          sum = 0
#          final_card_arr.each { |x| sum += x.to_i }
#          if sum % 10 == 0
#             return true
#         else
#             return false
#         end
#     end
# end

# 4. Refactored Solution

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
p CreditCard.new(1234567891234567).check_card() # false
p CreditCard.new(4408041234567893).check_card # true
p CreditCard.new(4408041234567892).check_card # false
p CreditCard.new(1111111111111111).check_card # false



# 5. Reflection 
# Fun problem. Had a tough time refactoring code until it was readable. Looked up other people's solutions to the Luhn algorithm.
