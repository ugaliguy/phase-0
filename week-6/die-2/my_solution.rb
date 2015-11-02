# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: A list of symbols
# Output: A roll of a die whose faces are the symbols
# Steps:
=begin
	1. Input a list of symbols.
	   If it is empty, output an error meesage.
	   Create a new N-sided die where N is the number of elements in the list.
	2. Return the number of sides of the die
	   (Return the size of the list)
	3. Roll the die and return the outcome.
	   (Pick an element of the list at random - this is the die roll)
=end


# Initial Solution

class Die
  def initialize(labels)
  	unless labels.length >= 1
	raise ArgumentError.new("You cannot make a die with an empty list of symbols")
	end
    @die_sides = labels
  end

  def sides
  	return @die_sides.length
  end

  def roll
  	side_index = rand(@die_sides.length)
  	return @die_sides[side_index]
  end
end



# Refactored Solution


# There is nothing to refactor.


# Reflection

=begin
1. What were the main differences between this die class and the last one you created in terms of implementation? 
   Did you need to change much logic to get this to work?

The only difference was the type of input. Last week, we input a positive integer. This week, we input a non-empty list.
Basically, we haven't done anything different. From the point of view of our Die class, the positive integer N, might as well
be the non-empty list [0, 1, 2, ..., N-1].

I did not need to change the logic at all.

2. What does this exercise teach you about making code that is easily changeable or modifiable? 

It teaches me that this should be one of our major goals in writing a piece of code - make it easy to modify.

3. What new methods did you learn when working on this challenge, if any?

I used no new methods. The hiccup occurred when I forgot to take the length of an array, but correcting this required
no new methods.

4. What concepts about classes were you able to solidify in this challenge?

This exercise helped reinforce the notion of a class and how to throw an error in the initialize-method.

=end