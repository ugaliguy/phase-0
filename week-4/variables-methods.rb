# Release 2

def full_name
	puts "What is your first name: "
	first = gets.chomp
	puts "What is your middle name: "
	middle = gets.chomp	
	puts "What is your last name: "
	last = gets.chomp

	puts "Say hello to death! " + first + ' ' + middle + ' ' + last
end


def bigger
	puts "What is your favorite number?"
	favorite = gets.chomp.to_i
	favorite += 1
	puts favorite.to_s + " is a better number and you smell!"
	
end

=begin

Here are the links for the mini-challenges:


	
How do you define a local variable?

A local variable is a variables that lives inside of a method. It is called local because it's influence (and potential to harm)
extends only to inside of the method. For example, suppose we have to methods called barf_1 and gravy_2 and both methods have a variable called puddle,
then even though both methods have the same name, gravy_2's puddle is invisible to barf_1's puddle (and vice versa). 
Local variables prevent methods from becoming weapons of mass destruction.


How do you define a method?

the syntax for defining a method is

def method_name(optinal parameters) (in fact, the parentheses around the optional parameters are unneccessary)
	code for the method goes here
end

What is the difference between a local variable and a method?

A method contains local variables.
Local variables are confined to their methods.

How do you run a ruby program from the command line?

type ruby "file-name".rb


How do you run an RSpec file from the command line?

type "file-name"_spec.rb

What was confusing about this material? What made sense?

Everything has been elementary and straightforward.
I think I might get in the habbit of using the methods .to_f and .to_s more.
	
=end