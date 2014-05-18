# U2.W4: Create Accountability Groups


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:
#An array of names
# Output:
#Outputs a list of accountability groups for the next 3 units (different groups per unit)
# Steps:
# Declare an initial array with all the names
# Somehow divide the array in equal groups
# Use some type of randomization to equally disperse groups
# Return arrays for different groups

# 3. Initial Solution
num_units = 3
(1..num_units).each do |i|
    members = [ "Rootul Patel", "Hilary Barr", "Alan Florendo", "Cassie Moy", "Stephen Craig Estrada", 
                        "Austin Hay", "Anthony Edwards Jr.", "John Berry", "Farheen Malik", "Daniel Deepak",
                        "RJ Arena", "Justin Lee", "Michael Weiss", "David Sin", "Julius Jung", "Fahia Mohamed",
                        "Molly Huerster", "Eric Hou", "Avi Fox-Rosen", "Joel Yawili", "Dylan Richards", "Kaitlyn La",
                        "Derek Siker", "Dylan Krause" ]
    num_members = members.count
    num_groups = num_members / 4
    (1..num_groups).each do |k| 
        temp_array = members.sample(4)
        (0..3).each do|x| {members.delete(temp_array[x])}
        puts "Unit #{i} - Accountability Group #{k} is #{temp_array}"
    end
end

# 4. Refactored Solution
# Refactored above
# 5. Reflection 
# I had a lot of difficulty understanding how to implement driver tests. I'm still unsure of how to 
# create tests for programs.

