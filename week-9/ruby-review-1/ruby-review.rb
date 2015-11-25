# Reflection

# Introduction to Inheritance

# I worked on this challenge with James Artz


# Pseudocode
=begin

Assume that Class Cohort has an instance variable for student
add_student
Input: name, city, email_address
Output: nil

STEP1: Add student data to the student section of Cohort


remove_student
Input: name, city, email_address
Output: nil, but record of student is removed from Cohort.students

Steps: 

[Verify that the student exists in Cohort]

Remove student record from Cohort.students

Student record should be removed from LocalCohort.students by inheritance.

END

currently_in_phase
Input: current date
Output: 0,1,2, or 3

IF (today's date - start_date <= 63)
  RETURN 0
IF (today's date - start_date <= 84)
  RETURN 1
IF (today's date - start_date <= 105)
  RETURN 2
IF (today's date - start_date <= 126)
  RETURN 3




graduated?
Input: Date (today's date)
Output: Boolean (True or False)

Steps:

IF input (today's date) is greater than cohort graduation date
  RETURN True

Otherwise,
  RETURN False

END


=end



# Initial Solution

# class GlobalCohort
  
#   def initialize(name, p0_start_date)
#   @name = name
#   @p0_start_date = p0_start_date
#   end
  
#   @students = {}
#   @mail_list = []
  
#   def add_student(name, email)
#     @students.name = name
#     @Students.email = email
#   end
  
#   def remove_student(name, email)
#     name = @students.name.delete
#     email = @students.email.delete
#   end
  
#   def currently_in_phase
#     if (DateTime.now.mjd - DateTime.parse(p0_start_date).mjd <= 63)
#       return 0
#     elsif (DateTime.now.mjd - DateTime.parse(p0_start_date).mjd <= 84)
#       return 1
#     elsif (DateTime.now.mjd - DateTime.parse(p0_start_date).mjd <= 105)
#        return 2
#     elsif (DateTime.now.mjd - DateTime.parse(p0_start_date).mjd <= 126)
#        return 3
#     else
#       return "Graduated!"
#     end
#   end
    
#   def graduated?
#     if (DateTime.now.mjd - DateTime.parse(p0_start_date).mjd > 126)
#       return true
#     else
#       return false
#     end
#   end
  
# end

# class LocalCohort < GlobalCohort
  
#   def initialize(name, p0_start_date, city)
#     @name = name
#     @p0_start_date = p0_start_date
#     @city = city
#   end

# end


# Refactored Solution

class GlobalCohort
  
  def initialize(name, p0_start_date)
  @name = name
  @p0_start_date = p0_start_date
  end
  
  @students = {}
  @mail_list = []
  
  def add_student(name, email)
    @students.name = name
    @Students.email = email
  end
  
  def remove_student(name, email)
    name = @students.name.delete
    email = @students.email.delete
  end
  
  def currently_in_phase
  	days = DateTime.now.mjd - DateTime.parse(p0_start_date).mjd
  	case days
  	when 0 .. 63
  		return 0
  	when 64 .. 84
  		return 1
  	when 85 .. 105
  		return 2
  	when 106 .. 126
  		return 3
  	else
  		return "Graduated!"
  	end
    
  def graduated?
    (DateTime.now.mjd - DateTime.parse(p0_start_date).mjd > 126) ? true : false
  end
  
end

class LocalCohort < GlobalCohort
  
  def initialize(name, p0_start_date, city)
    @name = name
    @p0_start_date = p0_start_date
    @city = city
  end

end


# Reflection
# 1. What concepts did you review in this challenge?

# We learned about inheritance. This was a new topic for us.

# 2. What is still confusing to you about Ruby?

# Nothing confusing. Now I find myself trying to use JavaScript syntax,
# but otherwise t is just a matter of mastering a lot of things.
# I haven't mastered yet..

# 3. What are you going to study to get more prepared for Phase 1?

# Reread parts of The Well-Grounded Rubyist. I've alo been working on 
# the medium difficulty puzzles on Rubeque.

