# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
    return source.select {|v| v =~ /#{thing_to_find}/}
end

def my_hash_finding_method(source, thing_to_find)
    new_hash = source.select {|k,v| v == thing_to_find}  
    new_array = new_hash.to_a.flatten
    new_array.delete(thing_to_find)
    return new_array
end

# Identify and describe the ruby method you implemented. 
# I used select for these methods. Select returns a new object (of the same data type you started with)
# with the values that pass the test block. The real trick for these problems was converting the selected
# hash into an array with the correct elements. To do that I used to_a, flatten, and delete.

# Person 2

# Takes an array and modifies the numbers inside it 
def my_array_modification_method(source, thing_to_modify)
  source.map {|element| element.is_a?(Integer)? element + thing_to_modify : element}
end


# Takes a hash and modifies the numbers inside it
def my_hash_modification_method(source, thing_to_modify)
  newsource=Hash[source.map{|key, value| [key, value.is_a?(Integer)? value + thing_to_modify : value]}]
end



# Identify and describe the ruby method you implemented. 
# .map is the Ruby method I implemented. It returns a new array with the results of running the block once for every element in enumerator.
# This is different from array.each, which returns the original array. 
# I also used .is_a?(Integer) to specify whether an element or value is an integer.


# Person 3
def my_array_sorting_method(source)
  # Convert each element in the array to a string, for comparison/sorting purposes
  for index in 0...source.length
        source[index] = source[index].to_s
    end

    sorted_array = source.sort_by do |element|
        element
    end

    return sorted_array
end

def my_hash_sorting_method(source)
  # Your code here!
    sorted_hash = source.sort_by do |key, value|
        value
    end

    return sorted_hash
end

# Identify and describe the ruby method you implemented. 
# The Ruby sort_by method lets you sort within your object, whether it is an array or a hash.  
# For an array, the syntax is quite basic:  
#     sorted_array = array_to_sort.sort_by { |element| element }
# And for the hash, just a tad more involved:
#     sorted_hash = source.sort_by { |key, value| value }


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  #Your code here!
end

def my_hash_deletion_method(source, thing_to_delete)
  #Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# Can't get person 3 driver tests to pass!
# 
# 
# 
# 