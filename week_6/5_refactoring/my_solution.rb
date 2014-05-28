# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself. I used Hilary Barr's code.

# Original Solution

# class CreditCard
  
#   def initialize(card_number) 
#     if card_number.to_s.length == 16
#         @card_number=card_number.to_s.split("").map!{|x| x.to_i} #take string card number and put each element 
#                                                                                                   #into an array. Then convert each string to ints.
#     else 
#       raise ArgumentError.new("Must enter 16 numbers") #Raise error if card length isn't 16
#     end
#   end
  
#   def check_card
#      @card_number.each_index do |x|
#         @card_number[x] =  @card_number[x] * 2 if x % 2 == 0 #double the nums at even positions
#      end
#      @card_number = @card_number.join("").chars.map { |x| x.to_i } #Splits up double digit numbers into singles
#      total= @card_number.inject(:+) #Sums all the numbers in card_number array
#     if total % 10==0 #Modulo 10
#       return true #Returns true if valid
#     else
#       return false #False if otherwise
#     end
#   end
# end

# Refactored Solution
class CreditCard
  
  def initialize(card_number) 
    if card_number.to_s.length == 16
        @card_number=card_number.to_s.split("").map!{|x| x.to_i} #take string card number and put each element 
                                                                                                  #into an array. Then convert each string to ints.
    else 
      raise ArgumentError.new("Must enter 16 numbers") #Raise error if card length isn't 16
    end
  end
  
  def check_card
     @card_number.each_index do |x|
        @card_number[x] =  @card_number[x] * 2 if x % 2 == 0 #double the nums at even positions
     end
     @card_number = @card_number.join("").chars.map { |x| x.to_i } #Splits up double digit numbers into singles
     total= @card_number.inject(:+) #Sums all the numbers in card_number array
    if total % 10==0 then true else false end 
  end
end

# DRIVER TESTS GO BELOW THIS LINE
card1 = CreditCard.new(4563960122001999)
p card1.check_card==true
card2 = CreditCard.new(45639601999)
p card2.check_card==false

# Reflection 
# There wasn't much to refactor in this solution. The code is consise and with the exception of line 49,
# fairly readable. I didn't understand line 49 for a while but then realized this is necessary to split up 
# double digit ints that are the result of doubling on the previous line so 10 goes to 1 and 0. I removed a 
# few lines by using a ternary operator on line 51.