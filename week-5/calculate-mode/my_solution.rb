# Calculate the mode Pairing Challenge

# I worked on this challenge with: Darius Atmar.

# I spent 2 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? Some collection of things
# What is the output? (i.e. What should the code return?) collection of most ferquently occuring thing(s)
# What are the steps needed to solve the problem?
=begin

Read the collection

Create a two row table (i.e. a hash) with first row having unique things
and second row having frequency of things

For each thing
increment frequency-value of thing by 1

sort the array in descending order (from largest to smallest).
The 0th item of the array will be a mode. Anything else with the same frewquency will also be a mode.

Construct an array of most frequently occuring items

Return array of modes

=end


# 1. Initial Solution

def mode(source)
  frequency = {}
  source.each do |item|
    if frequency[item] == nil
      frequency[item] = 0
    else
      frequency[item] +=1
    end
  end
  new = frequency.sort do |x, y|
    y[1] <=> x[1]
  end

  mode_value = new[0][1]
  
  modes = [] # 
  new.each do |pair|
    if pair[1] == mode_value
      modes.push(pair[0])
    end
  end
  return modes.sort
end




# 3. Refactored Solution

def mode(source)
  frequency = {}
  source.each do |item|
    if frequency[item] == nil
      frequency[item] = 0
    else
      frequency[item] +=1
    end
  end
  result = frequency.sort do |x, y|
    y[1] <=> x[1]
  end

  mode_value = result[0][1]
  
  modes = [] # This will be the output array
  result.each do |pair|
    if pair[1] == mode_value
      modes.push(pair[0])
    end
  end
  return modes.sort
end


# 4. Reflection

=begin
	
1. Which data structure did you and your pair decide to implement and why?

We used hashes and arrays because we wanted to be able to associate to each item (the key) its frequency (the value).

2. Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

Yes, I would say so. This task was easier t break down into smaller and smaller steps.

3. What issues/successes did you run into when translating your pseudocode to code?

In creating a new hash, I tried to add an integer to nil. The result was embarassing for us all. We forgot to sort our results.

4. We used a for-loop iin the initial solution/ We used .each in the refactored solution. Neither were hard to implement

=end