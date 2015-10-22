# Analyze the Errors

# I worked on this challenge by myself.
# I spent 1.5 hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------
=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
=end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# 		errors.rb
# 2. What is the line number where the error occurs?
# 		171
# 3. What is the type of error message?
# 		syntax error
# 4. What additional information does the interpreter provide about this type of error?
# 		unexpected '=', expecting end-of-input
# 5. Where is the error in the code?
# 		Line 16 or line 17 (i.e. after line 15)
# 6. Why did the interpreter give you this error?
# 		We need to end the while loop, this is why the error line is 171.
# 		The comppiler has gone to the bottom of the code looking for an 'en'

# --- error -------------------------------------------------------
=begin
south_park
=end
# 1. What is the line number where the error occurs?
# 		36
# 2. What is the type of error message?
# 		undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# 		undefined local variable or method `south_park' for main:Object (NameError)
# 4. Where is the error in the code?
# 		line 36
# 5. Why did the interpreter give you this error?
# 		Because the compiler cant' tell if south_park is supposed to be a method (which is not properly defined) or perhaps a variable
# 		which hasn't been initialized.

# --- error -------------------------------------------------------
=begin
cartman()
=end
# 1. What is the line number where the error occurs?
# 		52
# 2. What is the type of error message?
# 		undefined method
# 3. What additional information does the interpreter provide about this type of error?
# 		undefined method `cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
# 		line 52
# 5. Why did the interpreter give you this error?
# 		We need to define this mthod

# --- error -------------------------------------------------------
=begin
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')
=end
# 1. What is the line number where the error occurs?
# 		67
# 2. What is the type of error message?
# 		wrong number of arguments (1 for 0)
# 3. What additional information does the interpreter provide about this type of error?
# 		(ArgumentError)
# 4. Where is the error in the code?
# 		line 71
# 5. Why did the interpreter give you this error?
# 		Since cartman_phrase is defined with no parameters, then cartmans_phrase('I hate Kyle') 
# 		should not have 'I hate Kyle' as an argument.

# --- error -------------------------------------------------------
=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says
=end
# 1. What is the line number where the error occurs?
# 		87
# 2. What is the type of error message?
# 		 wrong number of arguments (0 for 1) 
# 3. What additional information does the interpreter provide about this type of error?
# 		(ArgumentError)
# 4. Where is the error in the code?
# 		line 91
# 5. Why did the interpreter give you this error?
# 		Since cartman_says has one parameter, then line 91 is wrong since there is no argument in cartman_says.



# --- error -------------------------------------------------------
=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end
# 1. What is the line number where the error occurs?
# 		108
# 2. What is the type of error message?
# 		 wrong number of arguments (1 for 2) (ArgumentError)
# 3. What additional information does the interpreter provide about this type of error?
# 		in `cartmans_lie'
# 4. Where is the error in the code?
# 		line 112
# 5. Why did the interpreter give you this error?
# 		cartmans_lie has two parameters, but there is only one argument on line 112.

# --- error -------------------------------------------------------
=begin
5 * "Respect my authoritay!"
=end
# 1. What is the line number where the error occurs?
# 		127
# 2. What is the type of error message?
# 		(TypeError)
# 3. What additional information does the interpreter provide about this type of error?
# 		String can't be coerced into Fixnum 
# 4. Where is the error in the code?
# 		line 127
# 5. Why did the interpreter give you this error?
# 		Because "Respect my authoritay!" is not an integer

# --- error -------------------------------------------------------
=begin
amount_of_kfc_left = 20/0
=end

# 1. What is the line number where the error occurs?
# 		142
# 2. What is the type of error message?
# 		(ZeroDivisionError)
# 3. What additional information does the interpreter provide about this type of error?
# 		in `/': divided by 0
# 4. Where is the error in the code?
# 		line 142
# 5. Why did the interpreter give you this error?
# 		20/0 is undefined

# --- error -------------------------------------------------------
=begin
require_relative "cartmans_essay.md"
=end
# 1. What is the line number where the error occurs?
# 		158
# 2. What is the type of error message?
# 		(LoadError)
# 3. What additional information does the interpreter provide about this type of error?
# 		in `require_relative': cannot load such file -- /vagrant/phase-0/week-4/cartmans_essay.md 
# 4. Where is the error in the code?
# 		line 158
# 5. Why did the interpreter give you this error?
# 		compiler cannot load "cartmans_essay.md" ??????


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

1. Which error was the most difficult to read?

The first one, since the bottom of the program is so far from the line where the faulty method resides.

2. How did you figure out what the issue with the error was?

It seemed obvious to me that the while-loop needed an 'end'.

3. Were you able to determine why each error message happened based on the code? 

Yes, except for the last one. I had no idea what was ntended to happen with this piece of code.

4. When you encounter errors in your future code, what process will you follow to help you debug?	

I don't know what my process will be yet since I haven't had to deal with any bugs. At the very least I will read the error messages carefully 
and proceed from there.
	
=end