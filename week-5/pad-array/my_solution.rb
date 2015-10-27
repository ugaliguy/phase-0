# This pad is reserved for a student in the Island Foxes cohort.

# Pseudocode

=begin

Input: collection, non-negative integer N , optional word W
Output: new collection with extra copies of the word W inserted at the end of the collection

Find length of input array L
Subtract that from N to see how many times the optional word must be added to the collection

IF L >= N
  
	return original array

else

	return original array with N -L copies of 'string' apended to the end of the array


=end

def pad!(array, min_size, value = nil) #destructive
 diff = min_size - array.length
  times = 0 if diff < 0
  diff.times do
    array << value
  end
  array
end


def pad(array, min_size, value = nil) #non-destructive
  diff = min_size - array.length
  times = 0 if diff < 0
  new_array = []
  diff.times do
    new_array << value
  end
  array + new_array
end



# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
 diff = min_size - array.length 
  diff.times do # Note that if diff is negative, then the original array is returned.
    array << value
  end
  array
end


def pad(array, min_size, value = nil) #non-destructive
  diff = min_size - array.length
  new_array = []
  diff.times do # Note that if diff is negative, then the original array is returned.
    new_array << value
  end
  array + new_array
end

# 4. Reflection

=begin

Were you successful in breaking the problem down into small steps?

Yes.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

Not quite. It was easy to figure out a destructive method, but comming up with the non-destructive method was beyond the scope of out pseudo-code.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and 
what did you do to resolve them?

No, our destructive method worked, but we banged our heads for a bit over how to make the second method non-destructive.
After a while, we ended the pairing in th hopes that going off and playing witht he code ourselves would lead to a resolution. It did.
My partner figured out an elementary way to return the new array without altering the old. He filled an empty array with the required number of pad words
and then returned the original array appended with the new array. This left the original array unchanged.

When you refactored, did you find any existing methods in Ruby to clean up your code?

No, we discovered that we could eliminate one line of code.

How readable is your solution? Did you and your pair choose descriptive variable names?

Yes we chose descriptive names to make the code more readable.

What is the difference between destructive and non-destructive methods in your own words?

A destructive method alters the original input. Once a destructive method is applied, it takes some work to recover the
original input (if that's even possible).

A non-destructive method does not alter the original input. After the methods execution, the original input is the same as before execution.
=end