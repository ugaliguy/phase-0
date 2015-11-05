#Attr Methods

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

class NameData
	attr_reader :name
	def initialize()
    	@name = "Unctuous Oswald"
  	end
end


class Greetings
	attr_reader :who
	def initialize()
    	@who = NameData.new
  	end

  	def hello()
  		puts "Hello " + @who.name + "! Where is my family-sized can of fruit cocktail?"
  	end
end

greet = Greetings.new
greet.hello


# Reflections

=begin
	
# Release 1

1. What are these methods doing?

The "what_is_..." methods are returning the values of the instance variables, whereas the "change_my_ ..." methods are reassigning 
the instance variables to new values and then returning them. 

2. How are they modifying or returning the value of instance variables?

The "what_is_ ..." simply returns the instance variable - nothing else.
The "change_my_ ..." method reassigns the instance variable to a new value and (implicitly) returns it.

# Release 2

1. What changed between the last release and this release?

The attribute reader attr_reader :age has been introduced and the what_is_my_age method has been commented out since it is no longer needed

2. What was replaced?

The what_is_my_age method has been replaced by attr_reader.

3. Is this code simpler than the last?

Yes, the lenght has been reduced by a few lines.


# Release 3

1. What changed between the last release and this release?

The atttribute writer attr_writer :age has been introduced.

2. What was replaced?

The change_my_age method was replaced.

3. Is this code simpler than the last?

Yes, introducing the attribute writer has lead to a reduction in the nuber of lines of code.
	

# Reflection

1. What is a reader method?

A reader method is a method for returning the value of an instance variable.

2. What is a writer method?

A writer method is a method for changing the value of an instance variable
and then returning that new value.

3. What do the attr methods do for you?

attr methods eliminate the need to write our own reader/writer methods.
The come in three flavors: attr_reader is a built in reader method for the class you are in;
attr_writer is a built in write method for the class you are in; and attr_accessor allows you to both read and write 
for the class you are in.

4. Should you always use an accessor to cover your bases? Why or why not?

No. You should use an accessor sparingly. There will be times when you want an instance variable to be read-only.
You do not want to a mthod outside of your class the ability to change the value.
On the other hand, there will be instance variables that you need to change, but that you wish to remain hidden from other
methods - for example, you method might input a password and change it, but you do not want other classes to know what the password is.

5. What is confusing to you about these methods?

Nothing actually. I'm not saying this to be cocky, but these make perfect sense (from my previous exposure to Python, 
where the importance of 'get' and 'set' methods was emphasized.). I think it's great that Ruby takes care of these things for us.

=end