# U2.W6: Create a Car Class from User Stories

# I worked on this challenge by myself.


# 2. Pseudocode
=begin
Create a vehicle class
Initialize should take two parameters (model, color)
Properties: model, color, speed, total distance covered
Function to set drive forward a certain distance
Function to find current speed
Function to turn left 
Function to turn right
Function to accelerate
Function to decelerate
Function to stop
At end of each function, puts the action
=end
# 3. Initial Solution
class Vehicle
    def initialize(model, color)
        @model = model
        @color = color
        @speed = 0
        @compass = ["North", "East", "South", "West"] 
        @current_direction = 0
        @total_distance = 0
    end

    def drive(distance, speed)
        if @speed < speed
                accelerate()
                drive(distance, speed)
        elsif @speed > speed
                decelerate()
                drive(distance, speed)
        else
            puts "Moved #{@compass[@current_direction]} a distance of #{distance} miles at #{speed} mph"
            @total_distance += distance
        end
    end

    def accelerate()
        @speed += 1
    end

    def decelerate()
        @speed -= 1
    end

    def turn_right()
        if @current_direction == 3
            @current_direction = 0
        else
            @current_direction += 1
        end
        puts "Turned right. Now facing #{@compass[@current_direction]}"
        return @compass[@current_direction]
    end

    def turn_left()
        if @current_direction == 0
            @current_direction = 3
        else
            @current_direction -= 1
        end
        puts "Turned left. Now facing #{@compass[@current_direction]}"
        return @compass[@current_direction]
    end

    def get_speed()
        puts "Current speed is #{@speed}"
        return @speed
    end

    def get_total_distance()
        puts "Total distance traveled is #{@total_distance} miles."
    end

    def stop()
        while @speed != 0
            self.decelerate()
        end
        puts "Stoped!"
        return @speed
    end

end #class Vehicle 

class Pizza
    def initialize(type)
        @type = type
    end
end

# 4. Refactored Solution
# Refactored above.

# 1. DRIVER TESTS GO BELOW THIS LINE
car1 = Vehicle.new("Ferrari", "Red")
car1.drive(1/4.0, 25) #Wouldn't let me use .25 instead of 1/4.0
car1.turn_right()
car1.drive(1.5, 35)
car1.get_speed
car1.drive(1/4.0, 15)
car1.turn_left()
car1.drive(1.4, 35)
car1.stop()
car1.get_total_distance()

# 5. Reflection 
# I decided against doing the pizza part of this bonus. It didn't seem like I was going to learn a lot from it. If I have
# time after finishing the blogs though, I'd like to come back and maybe draw out where the car is. Possibly 
# animate a tiny car moving in accordance with where the driver tests told it to go. <- Seems like an interesting
# way to learn about drawing / animation with ruby.
