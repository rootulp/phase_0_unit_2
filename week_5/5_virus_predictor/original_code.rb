# U2.W5: Virus Predictor

# I worked on this challenge Rootul and Hilary

# EXPLANATION OF require_relative
# require_relative pulls in data from another file, state_data, in the same folder
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population) #Initialize takes all the parameters and throws them into instance variables
   # We deleted @region and @next_region because they are not necessary to include in our program
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects  #Instance variable =each instantiation of an object 
   predicted_deaths
   speed_of_spread 
  end

  private  #The methods below can't be called by instances of the objects but they can be called in the public
           # section of the class

  def predicted_deaths # Looks at population density and population and
                                                              # prints out the number_of_deaths according to those
                                                       # two parameters
    case 
      when @population_density >= 200
        number_of_deaths = (@population * 0.4).floor
      when @population_density >= 150
        number_of_deaths = (@population * 0.3).floor
      when @population_density >= 100
        number_of_deaths = (@population * 0.2).floor
      when @population_density >= 50
        number_of_deaths = (@population * 0.1).floor
      else 
      number_of_deaths = (@population * 0.05).floor
    end

    
       @first_half= "#{@state} will lose #{number_of_deaths} people in this outbreak"
      
  end

  def speed_of_spread # Looks at population density and calculating speed based on that
    speed = 0.0

    case 
      when @population_density  >= 200
        speed += 0.5
      when @population_density  >= 150
        speed += 1
      when @population_density >= 100
        speed += 1.5
      when @population_density  >= 50
        speed += 2
      else 
        speed += 2.5
    end

     second_half= " and will spread across the state in #{speed} months.\n\n"
     @first_half << second_half

  end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state
# Each state has four pieces of information 
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population]) 
alabamaoutput="Alabama will lose 482202 people in this outbreak and will spread across the state in 2.0 months.\n\n"
p alabama.virus_effects==alabamaoutput

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population]) 
alaska.virus_effects
=end

#Tough assignment but learned about instance variables and nested hashes. Slightly confused by symbols.

