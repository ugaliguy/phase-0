# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Becky Lehmann.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A 16-digit number
# Output: True (if valid) or False (if invalid)

# Steps:
=begin
Step 1- Read card_number
        IF card_number has 16 digits
          create array of card_number's digits called card_digits
        ELSE
          throw an error message warning user that car_number is not the right size

Step 2- Reverse the cards digits and put digits into a new array called reverse_digits.
        For the 2-nd, 4-th, ..., 16-th entries, multiply that entry by 2.
        Otherwise, for the odd-place entries, do nothing.
        RETURN the array reverse_digits

Step 3- Let sum = 0
        FOR the entries i of reverse_digits,
          IF i is less than 10,
            add i to sum
          ELSE (if sum > 9)
            add the two digits of i to sum (one way to do this is to add 1 + (i%10))
        RETURN sum

Step 4- (Check whether sum%10 equals 0)
        Call the method of Step 2
        Call the method of Step 3
        IF (sum % 10) equals 0
          RETURN true
        ELSE
          RETURN false

=begin
	

	
=end

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(card_number)
    card_string = card_number.to_s
    card_digits = card_string.split(//)
    if card_digits.length == 16
      @card_number = card_digits
    else
      raise ArgumentError.new("Card number needs to be 16 digits.")
    end
  end

  def double_digits
    reverse_digits = @card_number.reverse
    for i in 0..15
      if i % 2 == 1
        reverse_digits[i] = 2 * reverse_digits[i].to_i
      else
        reverse_digits[i] = reverse_digits[i].to_i
      end
    end
    @reverse = reverse_digits
  end


  def sum_digits
    total = 0
    for i in 0..@reverse.length-1
      if @reverse[i] <= 9
        total += @reverse[i]
      else
        total += (1 + (@reverse[i] % 10))
      end
    end
    return @sum = total
  end

  def check_card
    double_digits
    sum_digits
    if ((@sum.to_i % 10) == 0 )
      return true
    else  
      return false
    end
  end

end

p card = CreditCard.new(4408041234567906)
p card.check_card

p card = CreditCard.new(4408041234567901)
p card.check_card



# Refactored Solution

class CreditCard



  def initialize(card_number)

    if card_number.to_s.length == 16
      @card_number = card_number.to_s.split(//)
    else
      raise ArgumentError.new("Card number needs to be 16 digits.")
    end
  end

# I tried to refactor double_digits, but was not succesful.

  def double_digits
    reverse_digits = @card_number.reverse
    for i in 0..15
      if i % 2 == 1
        reverse_digits[i] = 2 * reverse_digits[i].to_i
      else
        reverse_digits[i] = reverse_digits[i].to_i
      end
    end
    @reverse = reverse_digits
  end

# I tried to refactor sum_digits, but was not succesful.
  def sum_digits
    total = 0
    for i in 0..@reverse.length-1
      if @reverse[i] <= 9
        total += @reverse[i]
      else
        total += (1 + (@reverse[i] % 10))
      end
    end
    return @sum = total
  end

  def check_card
    double_digits
    sum_digits   
    return ((@sum.to_i % 10) == 0)
  end

end

# Reflection

=begin
  
1. What was the most difficult part of this challenge for you and your pair?

Passing the last test. It took me forever to realize that I wasn't passing the last test because I wasn't calling
my double_digits and sum_digits methods from inside of check_card. I lost a lot of time figuring this out.

2. What new methods did you find to help you when you refactored?

I tried to figure out how to use the enumerator inject. I also tried to get a better handle on the map method.
I wasn't succesful with either method, but I feel like I should be able to use them.

3. What concepts or learnings were you able to solidify in this challenge?

At the very least, this exercise reminded me that methods can call other methods.
I also gained an appreciation for Ruby's Enumerable module.
  
=end