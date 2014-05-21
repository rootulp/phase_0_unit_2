# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: Dominic (guide)

# Our Refactored Solution

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
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!

#  Reflection 
# I liked this assignment even though my partner didn't show. Dominic was extremley helpful
# especially because I found this project to be pretty dificult. 


