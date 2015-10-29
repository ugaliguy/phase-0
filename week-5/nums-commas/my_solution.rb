# Numbers to Commas Solo Challenge

# I spent 3.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? An integer
# What is the output? (i.e. What should the code return?) The same integer but in comma-formatting - call it CN
# What are the steps needed to solve the problem?

=begin

Some assumprtions:
Integers are non-negative. Numbers input are integers and not floats.

Step 1: Read in the integer N

Step 2: Construct an array whose elements are the digits of N (in the order that they appear in N)

Step 3: Insert a comma ',' after every 3rd digit in the array

Step 4: Turn the contents of the array into a string.

Step 5: Return the sstring. This string is our comma-formatted number CN.
=end


# 1. Initial Solution

def separate_comma(some_integer)

	if some_integer <= 999
		return some_integer.to_s
	else
		some_digits = [] # some-digits will be an array whose elements are the digits of some_integer.
		k = 1 # k is an exponent in what follows
		while (k < Math.log10(some_integer) + 1) do
			some_digits.push(some_integer % 10**(k)/(10**(k-1)))
			k +=1			
		end

		some_commas = [] # some_commas will have commas inserted into some_digits
		for i in 0..(some_digits.length - 1)
			if (i < 3)
				some_commas.push(some_digits[i].to_s)
			elsif (i % 3 == 0)	
				some_commas.push(',').push(some_digits[i].to_s)
			else
				some_commas.push(some_digits[i].to_s)
			end
		end	

		comma_integer = '' # This is the comma formatted string that the method outputs.
		for i in 0..(some_commas.length - 1)
			comma_integer += some_commas[i]
		end
		result = comma_integer.reverse
	end
	return result
end



# 2. Refactored Solution

def separate_comma(some_integer)

	some_string = some_integer.to_s
	if some_integer <= 999
		return some_string
	else
		some_digits = some_string.split("") # some-digits will be an array whose elements are the digits of some_integer.

		some_commas = [] # some_commas will have commas inserted into some_digits
		for i in 0..(some_digits.length - 1)
			if ((i < 3) || (i % 3 != 0))
				some_commas << some_digits[i]
			else
				some_commas <<',' << some_digits[i]
			end
		end	

		comma_integer = '' # This is the comma formatted string that the method outputs.
		for i in 0..(some_commas.length - 1)
			comma_integer += some_commas[i]
		end
		result = comma_integer.reverse
	end
	return result
end


# 3. Reflection

=begin
	
1. What was your process for breaking the problem down? What different approaches did you consider?

	My first instinct was to turn the integer into an array of digits and then use the array indices to put a comma after every third digit.
	I wanted to see if there was a method for turning a number directly into an array, but that felt like something that should wait for refactoring.

2. Was your pseudocode effective in helping you build a successful initial solution?

	More or less. I still need practice with breaking tasks down to their atomic components.

3. What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

	I used .split("") to turn a string into an array of characters.
	I also used << instead of .push to append elements to the end of an array.

4. How did you initially iterate through the data structure?

	I used for- and while-loops.

5. Do you feel your refactored solution is more readable than your initial solution? Why?
	
	In my initial solution, I used some easily forgotten math to help create one of my arrays.
	I know that the eyes of someone math-phobic would glaze over and perhaps not be able to understand what I was doing.
	In the refactored code, I was able to get rid of the math altogether.
=end