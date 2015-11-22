# Fibonacci Sequence

# I worked on this challenge by myself.
# This challenge took me [#] hours.

# Pseudocode
=begin
Input: An integer N
Output: true or false

Step 1. CALCULATE n1 = 5*N^2 + 4 and  n2 = 5*N^2.

Step 2. CALCULATE the square roots of n1 and n2

Step 3. CHECK whether n1 or n2 (or both) are integers.

Step 4. IF n1 OR n2 is an integer
			RETURN true
		ELSE
			RETURN false	
=end


# Initial Solution

# def is_fibonacci?(num)

# 	fib = [0,1]
# 	if (num > 1)
# 		while (fib.last < num)
# 			fib_sum =fib[0]+fib[1]
# 			fib.push(fib_sum)
# 			fib.shift
# 		end
# 		return fib[1] == num
# 	end
# end


# Refactored Solution

def is_fibonacci?(num)
	fib = [0,1]
	while (fib.last < num)
		f_0, f_1 = fib.pop(2)
		fib.push(f_0, f_1, f_0 + f_1)
	end
	return num == fib.last
end



=begin
Reflection

1. What concepts did you review or learn in this challenge?

I reviewed array methods. I managed to learn two new methods: .last and .shift

What is still confusing to you about Ruby?

I have a hard time refactoring because I would rather build the code to do what I want 
rather than research and hunt around for a method that is already available.

What are you going to study to get more prepared for Phase 1?

Reread parts of Black's text - especially the sections on the Enumerables module.
I need to review iterators as well.

=end