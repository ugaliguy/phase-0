=begin

The reflection is at the bottom, after the code.

Pseudo Code

Assumptions : There is a way to input a list of students. I haven't figured this out yet.
			  There are at least 3 students.

Input: The number of students to be placed into accountability groups
Output: A list of acountability groups with numbers that identify the students.
		Each group has at least 3 members, but usually 4 0r 5 members.

1.  Ask user to input number of students N.

2.  Create a list og numbers 1 ... N

3.  Shuffle this list of numbers.

4.  Determine the number of groups needed.
    Constraints: The size of each group must be at least 3.
   				 Make the groups of size 4.

5.  Populate the groups

6.  Return the groups.

=end

# Initial code

def make_acct_groups
	puts "Type in the number of students you have: "
	number_students = gets.chomp.to_i

	# Construct the array with the numbers 1 ... number_students
	student_id = []
	for i in 1..number_students
		student_id.push(i)
	end

	#student_id = Array.new(number_students) {|i| i+1 }
	#print student_id

	shuffle_id = student_id.shuffle.to_a
	#print shuffle_id

	mod4 = number_students % 4

	if (number_students == 6)
		number_groups = 2
	elsif (mod4 ==3)
		number_groups = (number_students / 4) + 1
	else
		number_groups = (number_students / 4)
	end

	acct_groups = {} 	
	if (number_students == 6)
		for i in 1..2
			if (i == 1)
				acct_groups[i.to_s] = [shuffle_id[0], shuffle_id[1], shuffle_id[2]]
			else	
				acct_groups[i.to_s] = [shuffle_id[3], shuffle_id[4], shuffle_id[5]]
			end
		end
	elsif (mod4 == 3)
		for i in 1..number_groups
			if i <= number_groups -1
				acct_groups[i.to_s] = [shuffle_id[4*i-4], shuffle_id[4*i-3], shuffle_id[4*i-2], shuffle_id[4*i-1]]
			else
				acct_groups[i.to_s] = [shuffle_id[4*i-4], shuffle_id[4*i-3], shuffle_id[4*i-2]]
			end
		end
	elsif (mod4 == 2)
		for i in 1..number_groups
			if i <= (number_groups-2)
				acct_groups[i.to_s] = [shuffle_id[4*i-4], shuffle_id[4*i-3], shuffle_id[4*i-2], shuffle_id[4*i-1]]
			elsif (i == (number_groups -1))
				acct_groups[i.to_s] = [shuffle_id[4*i-4], shuffle_id[4*i-3], shuffle_id[4*i-2], shuffle_id[4*i-1], shuffle_id[4*i]]
			else
				acct_groups[i.to_s] = [shuffle_id[4*i-3], shuffle_id[4*i-2], shuffle_id[4*i-1], shuffle_id[4*i], shuffle_id[4*i+1]]
			end
		end
	elsif (mod4 == 1)
		for i in 1..number_groups
			if i <= (number_groups-1)
				acct_groups[i.to_s] = [shuffle_id[4*i-4], shuffle_id[4*i-3], shuffle_id[4*i-2], shuffle_id[4*i-1]]
			else
				acct_groups[i.to_s] = [shuffle_id[4*i-4], shuffle_id[4*i-3], shuffle_id[4*i-2], shuffle_id[4*i-1], shuffle_id[4*i]]
			end
		end
	elsif (mod4 == 0)
		for i in 1..number_groups
				acct_groups[i.to_s] = [shuffle_id[4*i-4], shuffle_id[4*i-3], shuffle_id[4*i-2], shuffle_id[4*i-1]]
		end
	end
	return acct_groups
end

print make_acct_groups

# Refactored code

# I wasn't succesful in refactoring this.
# I'm sure there's a way to shorten the 

def make_acct_groups
	puts "Type in the number of students you have: "
	number_students = gets.chomp.to_i

	# Construct the array with the numbers 1 ... number_stdnts
	student_id = Array.new(number_students) {|i| i+1 }
	#print student_id

	shuffle_id = student_id.shuffle.to_a
	#print shuffle_id
mod4 = number_students % 4

	if (number_students == 6)
		number_groups = 2
	elsif (mod4 ==3)
		number_groups = (number_students / 4) + 1
	else
		number_groups = (number_students / 4)
	end

	acct_groups = {} 	
	if (number_students == 6)
		for i in 1..2
			if (i == 1)
				acct_groups[i.to_s] = [shuffle_id[0], shuffle_id[1], shuffle_id[2]]
			else	
				acct_groups[i.to_s] = [shuffle_id[3], shuffle_id[4], shuffle_id[5]]
			end
		end
	elsif (mod4 == 3)
		for i in 1..number_groups
			if i <= number_groups -1
				acct_groups[i.to_s] = [shuffle_id[4*i-4], shuffle_id[4*i-3], shuffle_id[4*i-2], shuffle_id[4*i-1]]
			else
				acct_groups[i.to_s] = [shuffle_id[4*i-4], shuffle_id[4*i-3], shuffle_id[4*i-2]]
			end
		end
	elsif (mod4 == 2)
		for i in 1..number_groups
			if i <= (number_groups-2)
				acct_groups[i.to_s] = [shuffle_id[4*i-4], shuffle_id[4*i-3], shuffle_id[4*i-2], shuffle_id[4*i-1]]
			elsif (i == (number_groups -1))
				acct_groups[i.to_s] = [shuffle_id[4*i-4], shuffle_id[4*i-3], shuffle_id[4*i-2], shuffle_id[4*i-1], shuffle_id[4*i]]
			else
				acct_groups[i.to_s] = [shuffle_id[4*i-3], shuffle_id[4*i-2], shuffle_id[4*i-1], shuffle_id[4*i], shuffle_id[4*i+1]]
			end
		end
	elsif (mod4 == 1)
		for i in 1..number_groups
			if i <= (number_groups-1)
				acct_groups[i.to_s] = [shuffle_id[4*i-4], shuffle_id[4*i-3], shuffle_id[4*i-2], shuffle_id[4*i-1]]
			else
				acct_groups[i.to_s] = [shuffle_id[4*i-4], shuffle_id[4*i-3], shuffle_id[4*i-2], shuffle_id[4*i-1], shuffle_id[4*i]]
			end
		end
	elsif (mod4 == 0)
		for i in 1..number_groups
				acct_groups[i.to_s] = [shuffle_id[4*i-4], shuffle_id[4*i-3], shuffle_id[4*i-2], shuffle_id[4*i-1]]
		end
	end
	return acct_groups
end

# reflection

=begin
	
1. What was the most interesting and most difficult part of this challenge?

For me, itwas trying to figure out a way of obtaining the data to enter, but 
then realizing that names e=weren't important so long as each person is assigned to exactly one group.

2. Do you feel you are improving in your ability to write pseudocode and break the problem down?

Yes, definitely.

3. Was your approach for automating this task a good solution? What could have made it even better?

I think my approach performs a lot of repetitious tasks. I feel like there should be
a better way to do what I did.

4. What data structure did you decide to store the accountability groups in and why?

I used a hash of arrays, where the key is the group name and values are an array of members of the group.

5. What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

I'm still not familiar with the different enumerators that could shorten my code.
	
=end