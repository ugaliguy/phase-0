# Your Names
# 1) Chris Gomes
# 2) Sasha Tailor

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.



#Inputs: item_to_make is user requested item
#order_quantity is number of ingredients available
=begin
def serving_size_calc(item_to_make, number_ingred)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  #Creates a hash with the products available and the number of "ingredients" that make up a serving of each product
  
  error_counter = 3  #Error_counter is hard-coded to number of products in library hash

  #loop through the library hash, which contains products available. If item_to_make is not contained in the library hash, an error message gets generated that it isn't a valid input.
  
  library.each do |food|
    if library[food] != library[item_to_make]
      p error_counter += -1
    end
  end

  # IF item_to_make isn't in library, then throw an error
  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  #if product is in library, return the number of ingredients (or hash value) of that product
  #Calculate how many remaining ingredients there are based on the input and the hash value
  
  #serving_size = library[item_to_make]
  serving_size = library.values_at(item_to_make)[0]
  serving_size_mod = number_ingred % serving_size

  #IF the number of ingredients is divisible by the serving size in the hash, return the number of servings that we can make
  
  #ELSE return the number of servings that we can make plus the number of ingredients left over
  
  case serving_size_mod
  when 0
    return "Calculations complete: Make #{number_ingred/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{number_ingred/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end
=end



#####################################################################################
#####################################################################################
# Refactored Code

def serving_size_calc(item_to_make, number_ingred)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  raise ArgumentError.new("invalid input") unless library[item_to_make]

=begin  
  if library[item_to_make] == nil
    raise error
  end
  
  if !library[item_to_make]
    raise error
  end
=end
  # serving size = value where key = 'item_to_make'
   serving_size = library[item_to_make]
  
  # IF item_to_make isn't in library, then throw an error
  if serving_size.nil?
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  #if product is in library, return the number of ingredients (or hash value) of that product
  #Calculate how many remaining ingredients there are based on the input and the hash value
  
  leftover = number_ingred % serving_size
  # IF leftover > 0 , give leftover many cookies
  
  if(leftover > 0)
    bonus_cookies = leftover/library["cookie"]
  end
  
  #IF the number of ingredients is divisible by the serving size in the hash, return the number of servings that we can make
  
  #ELSE return the number of servings that we can make plus the number of ingredients left over
  
  case leftover
  when 0
    return "Calculations complete: Make #{number_ingred/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{number_ingred/serving_size} of #{item_to_make}, you have #{leftover} leftover ingredients. 
    Suggested baking items: " + bonus_cookies.to_s + " cookies"
  end
end



p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
  
1. What did you learn about making code readable by working on this challenge?

Variable names are important. A poorly named variable can make your code incomprehensible.
A well-chosen variable name can give your code a narrative structure that is easier to read

2. Did you learn any new methods? What did you learn about them?

I learned  how to throw error messages using raise ArgumentError.
Although I'm curious, because there appears to be a strong opinion
that Classes should raise errors and methods should not.
I'll explore this idea later.

3. What did you learn about accessing data in hashes? 

I'm not sure I learned anything new with this challenge (other than it still
challenges me.)

4. What concepts were solidified when working through this challenge?
  
  The importance of refactoring. The initial code is just a working draft.
  It's like the first draft of a novel. You wouln't submit your first draft 
  for publication. You need to get a minimally viable code, but once you have that,
  you need to find room for improvement - get rid of redundnat code, make variable 
  ames more meaningful. rewrite methods to use hwat Ruby has to offer.
  Today's code was certainy mvp, but was otherwise a trainwreck.

=end