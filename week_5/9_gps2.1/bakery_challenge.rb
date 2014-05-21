# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Rootul Patel
# 2) Dominic (guide)

 # This is the file you should end up editing. 
 
# def bakery_num(num_of_people, fav_food) #num_of_people is an int, fav_food is a string
#   my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} #value is num of pieces of food item
#   pie_qty = 0
#   cake_qty = 0
#   cookie_qty = 0
  
#   has_fave = false # not sure what that is yet

#   my_list.each_key do |k|
#     if k == fav_food #checking to see if fav_food is in my_list
#       has_fave = true
#       fav_food = k #define fav_food if it exists in my_list
#     end
#   end

#   if has_fave == false
#     raise ArgumentError.new("You can't make that food") # If fav_food not in my_list
#   else #if fav_food is in my_list
#     fav_food_qty = my_list.values_at(fav_food)[0] #quantity of favorite food - poor code
#     if num_of_people % fav_food_qty == 0 #whether or not you need an extra pie, cake, or cookie
#       num_of_food = num_of_people / fav_food_qty
#       return "You need to make #{num_of_food} #{fav_food}(s)." #string interprolation
#     else num_of_people % fav_food_qty != 0 #get rid of stuff after else
#       while num_of_people > 0 #keeps happening until enough food is made
#         if num_of_people / my_list["pie"] > 0 
#           pie_qty = num_of_people / my_list["pie"]
#           num_of_people = num_of_people % my_list["pie"]
#         elsif num_of_people / my_list["cake"] > 0 #if you still need to make more cake
#           cake_qty = num_of_people / my_list["cake"] #up the cake quantity based on number of ppl
#           num_of_people = num_of_people % my_list["cake"] #set new number of ppl equal to how many haven't been served yet
#         else
#           cookie_qty = num_of_people #set cookie quantity = to number of ppl that want cookies
#           num_of_people = 0 #then set num of people to 0 to exit while loop
#         end
#       end
#     return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
#     end
#   end
# end

#-------------------------------
#Refactored code

def bakery_num(num_of_people, fav_food) #num_of_people is an int, fav_food is a string
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} #value is num of pieces of food item
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0 
  has_fave = my_list.include?(fav_food)
  raise ArgumentError.new("You can't make that food") if has_fave == false
  fav_food_qty = my_list[fav_food]
  if num_of_people % fav_food_qty == 0 
    num_of_food = num_of_people / fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)." 
  else
    case fav_food
      when "pie"
        pie_qty = num_of_people / my_list["pie"]
        num_of_people = num_of_people % my_list["pie"]
      when "cake"
        cake_qty = num_of_people / my_list["cake"] 
        num_of_people = num_of_people % my_list["cake"] 
    end
    cookie_qty = num_of_people
    num_of_people = 0
  end
  return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
end
 
#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
#p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # This is what I want
 