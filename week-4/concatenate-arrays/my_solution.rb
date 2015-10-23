# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here
  if ((array_1 == []) && (array_2 == []))
  	return []
  else
  	array_2.each do |element_2|
  		array_1.push(element_2)
  	end
  end
  return array_1
end