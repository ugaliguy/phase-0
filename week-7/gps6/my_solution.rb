# I worked on this challenge with Logan Bresnahan.
# We spent 3 hours on this challenge.

# EXPLANATION OF require_relative
#
#
 require_relative 'state_data'
# #require_relative will look up the absolute path for a file and load it. It is a subset of require. 
# class VirusPredictor
#   attr_accessor :state_of_origin, :population_density, :population
#   #It takes arguments and sets equal the instance vairables.
#   def initialize(state_of_origin, population_density, population)
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#   end
#   #It calls two methods.
#   def virus_effects
#     predicted_deaths(@population_density, @population, @state)
#     speed_of_spread(@population_density, @state)
#   end

#   private
#   #This method takes three inputs and depending on the value it prints the if else calculation.
#   def predicted_deaths(population_density, population, state)
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end
#   This method takes two inputs and depending on the value it prints the if else calculation.
#   def speed_of_spread(population_density, state) #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# end


#=======================================================================
#  Refactored 

class VirusPredictor
  attr_accessor :state_of_origin, :population_density, :population
  #It takes arguments and sets equal the instance vairables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #It calls two methods.
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    #speed_of_spread(@population_density, @state)
  end

  private
  #This method takes three inputs and depending on the value it prints the if else calculation.
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    speed = 0.0
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed += 0.5
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed += 1
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed += 1.5
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed += 2.0
    else
      number_of_deaths = (@population * 0.05).floor
      speed += 2.5
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
    #puts " and will spread across the state in #{speed} months.\n\n"

  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


states = STATE_DATA.keys
states.each {|state| state.virus_effects if state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])}

#p states
#=======================================================================
# Reflection Section
=begin
1. What are the differences between the two different hash syntaxes shown in the state_data file?

The first hash syntax uses strings as keys and requires the 'key => value' syntax.
The second hashes cleaner syntax that uses symbols as keys. 
Instead of having to write :key => value, we can write the much leaner key: value syntax.

2. What does require_relative do? How is it different from require?

The method require_relative "file path name", allows other Ruby files to be imported into a Ruby program so that the program can run them.
For example require_relative 'state_data' allows the driver code to access the state data used to calculate the virus effects.

The require method is a generalized version of require_relative. It allows you specify other file types (not just Ruby files).
It also allows you to specify an absolute path (but I'm sure why this is a good thing).

3. What are some ways to iterate through a hash?

For a hash called example_hash you could loop by key-value pairs:
 example_hash.each {|key, value| # put iterative code here}

or you could create an array of keys:
 example_keys = example_hash.keys
 example_keys.each {|keys| # put iterative code here}

4. When refactoring virus_effects, what stood out to you about the variables, if anything?
  
None of the varibales were instance variables, they were just arguments. They could only be accessed within 
the methods.

5. What concept did you most solidify in this challenge?

Refactoring - being able to combin two methods into one was cool.
The notion of "private".
This challenge also gave me a bit more confidence with hashes.
=end