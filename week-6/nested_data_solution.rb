# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
#p array[1][2][0]

#p array[1][2][0].to_s

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

# p hash[outer:[inner:["almost"[3]]]]

# p hash[outer:[inner:["almost"][3]]]

# p hash[outer:{inner: {"almost" => {3 => "congrats!"}}}]

#p hash[outer:]

p hash[:outer][:inner]["almost"][3]

# ============================================================

# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# Another representation of number_array

number_array = [5, 
				[10, 15], 
				[20,25,30], 
				35]

# for i in 0..number_array.length-1
#   number_array[i]+=5
# end
# p number_array

# number_array.each do |element|
#   if element.kind_of?(Array)
#     number_array[] element.each {|inner| inner +=5}
#   else
#     element +=5
#   end
# end

number_array.each_with_index do |element, index|
  if element.kind_of?(Array)
    element.each_with_index do |inner, index| 
      element[index] +=5
    end
  else
    number_array[index]  +=5
  end
end

p number_array



# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names.each_with_index do |element, index|
  if element.kind_of?(Array)
    element.each_with_index do |inner, index| 
      if inner.kind_of?(Array)
        inner.each_with_index do |value, idx| 
          inner[idx] = value + "ly"
        end
      else
        element[index] = inner + "ly"
      end
    end
  else
    startup_names[index] = element + "ly"
  end
end

p startup_names



=begin
	
Reflection:

1. What are some general rules you can apply to nested arrays?

As a rule of thumb, if you have N nested arrays, then you should expect to have perform N-1 nested iterations
to access the elements of the innermost array. Another thing that helps is to spread the array across several
indented lines (a new line each time you hit a new array). This gives a nice visual model and the shape of your 
loops should  match the shape of your array.

2. What are some ways you can iterate over nested arrays?

Use nested for-loops that correspond to the nested-structure of the nested arrays.
Another idea occurs to me. You could create a flattened copy of the nested array (using the non-destructive .flatten)
and iteerate over the new flattened array.


3. Did you find any good new methods to implement or did you re-use one you were already familiar with? 
What was it and why did you decide that was a good option?
	
I re-used the ones I knew, but my pair-partner came up with some good uses for the kind_of?(Array) method.
At this point, I am still trying to visualize multi-dimensional arrays

=end