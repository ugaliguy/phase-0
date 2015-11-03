# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An integer
# Output: A deetermination of whether you have won or lost a game.
# Steps:
=begin
1. Create a new game with an input intger A.

2. Check the player's guess also an integer N)
		Tell the player the outcome of the guess"
		IF N > A
			report 'Too high'
		ELSE IF N < A
			report 'Too Low'
		ELSE
			report 'Correct'

3. Tell the player if they have won.
        IF N = A
        	report 'You Win!'
  		Else
  		  	report 'Keep Guessing'

=end

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer.to_i
  end
  # Make sure you define the other required methods, too
  def guess(guess)
  	@guess = guess
  	if (guess.to_i > @answer)
  		return :high
  	elsif (guess.to_i < @answer)
  		return :low
  	else
  		return :correct
  	end
  end

  def solved?()
  	if (@guess == @answer)
  		return true
  	else
  		return false  		
  	end
  end


end



# Refactored Solution

# There is nothing to refactor.




# Reflection

=begin
	
1 How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

If we wish to model a real-world object as a class, then we must determine what the essential defining properties of
that object are. To give a contrived example, suppose we wanted to model a 'cool TV FBI agent'.

Some nouns that describe such an object include:  well-groomed, heroic, well-educated, determined, haunted.

However, these nouns are not enough to distinguish 'cool TV FBI agents' from most other 'cool TV heroic types'.

We also need verbs/actions to describe the object (and thus distinguish it from other types of object).
Such verbs might include: drinks black coffee, eats pie, lets the bad guy live.

In defining ta Class, the instance variables would be the nouns and the verbs would become the instance methods.


2. When should you use instance variables? What do they do for you?

You should use instance variables to give the objects of a class a set of common characteristics.
On the one hand, instance variables allow you recognize when two objects are of the same class.
On the other hand, you can 'customize' an object through its instance variable values. This allows you to
distinguish between two non-identical objects of the same type.

3. Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control allows us to define a logicall path leading an unambiguous conclusion.
The methods in this challenge did not require sophisiticated compouund logical expressions.
All expressions were simple and involved, at most, one comparison operator.
I did not struggle with flow control in this challenge.

4. Why do you think this code requires you to return symbols? What are the benefits of using symbols?

Symbols are objects that behave like strings, but unlike strings, symbols cannot be mutated.
There are any number of ways to mutate a string - you can reverse it, pop off characters, make any 
alphabetical charaters Upper or lower case, ... etc. However, you cannot do these things to a string.

The benefit of using symbols is that you can safely use them to represent things that should not change.


	
=end