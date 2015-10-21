## Release 1: Summarize

#### What does puts do?

The command *puts* outputs the string that follows it on the screen. It does nothing else. In particular, *puts* does not return the string.
It returns nil.

#### What is an integer? What is a float?

Integers are whole numbers - numbers without decimal points, such as 12, 0, 99999999, and -372.
Floats are numbers with decimal points, such as 1.6, 0.333, 3.14, -2.78.

#### What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Let's consider the following division

15/2

If I were to ask you what the result is, you would reasonably answer 7.5.

However, if you wrote a program in ruby and ran it, the output would be 7.

On the other hand, if you also had your program evaluate 15.0/2.0 (or 15.0/2 or 15/2.0), then you would get the expected result 7.5.

So, what is going on?

The reason why the results are different is that dividing two integers results in an integer.
If you remember your elementary arithmetic, the result of dividing two ingers results in a quotient and a remainder.
For example, with 15/2, the quotient is 7 and the remainder is 1.
Hence, integer division only returns the quotient, not the remainder (note that there is another integer operation (called modulus) which returns the remainder).
If you want to see the result of an integer division in decimal form then you must make one of your integers a float by appending a '.0' to it.

What's really going on is that a computer views the integer 15 and the float 15.0 as not equal. The computer stores 15 as an integer and performs integer operations it, whereas the computer stores 15.0 as a float and performs float operations on it. For example, if we asked ruby to evaluate 8/4 and 8.0/4, ruby would return 2 and 2.0 (respectively). From our (human) point of view, these are equal. However, from ruby's point of view these can't be equal, because they are not even the same type of number.

## Release 2: mini-challenges

* Hours in a year (assuming a 365-day year)

```
irb(main):005:0> 365*24
=> 8760
```

* Minutes in a decade (assuming a 365-day year)

```
irb(main):006:0> 10*365*24*60
=> 5256000

```

## Release 7: Reflection

#### How does Ruby handle addition, subtraction, multiplication, and division of numbers?

The operations return the type they are applied - e.g. a product two floats is a float, an integer divided by another integer return the quotient (an integer).
However when the types are mixed, then the operation returns a float.

#### What is the difference between integers and floats?

Floats are numbers with decimal values. Integers are whole numbers (either positive or negative).
Please note that the integer 2 and the float 2.0 are distinct objects in the eyes of a computer.

#### What is the difference between integer and float division?

Float division return a number with decimal points - as you would expect in the real world.
Integer division returns the quotient of two integers, but not the decimal rrepresenting the fraction of the remainder divided by the divisor.

#### What are strings? Why and when would you use them?

A string is a sequence of characters sandwiched between quote - for example " " and  "gravy" are both strings.

Strings are desirable since not all variables are numerical and not all computations return numbers. You could use strings for any computations involving formatted dates and times. 

#### What are local variables? Why and when would you use them?

Local variables are variables living inside of methods. They are confined to the method and cannot be accessed from outside of the method. Similarly, local variables cannot access local variables in other methods. This keeps your code safe. You cannot unintentionally damage your by giving your local variables unrestricted access to other parts of the program. Local variables make your code safe.



#### How was this challenge? Did you get a good review of some of the basics?