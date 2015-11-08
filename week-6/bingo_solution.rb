# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

=begin
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  Create an array with the symbols B, I, N, G, O
  Shuffle the array
  Pick the first element of this array to get a letter - call it L
  Randomly choose an integer between 1 and 100 - call it N

# Check the called column for the number called.
  #fill in the outline here
  FOR row in 1 to 5
    Check whether the L-th entry in row equals N



# If the number is in the column, replace with an 'x'
  #fill in the outline here
       IF TRUE
        Replace N with the symbol X

# Display a column to the console
  #fill in the outline here
  Let C = column number
  FOR row in 1 to 5
    Print the C-th element of row


# Display the board to the console (prettily)
  #fill in the outline here
  FOR board_row in 1 to 5
    FOR board_column in 1 to 5
      Print board_column

=end

# Initial Solution


class BingoBoard
  def initialize(board)
    @bingo_board = board
  end

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  def call
    @letters = {'B' => 0, 'I' => 1, 'N' => 2, 'G' => 3, 'O' => 4}
    @letter_keys = @letters.keys
    @call_letter = @letter_keys.shuffle[0]
#@call_letter = 'I'
    @call_number = 1 + rand(99)
#@call_number = 31
    return [@call_letter, @call_number]
    #return ['B', 22]
  end


# Check the called column for the number called.
  def check
    @bingo_board.each do |row|
        if row[@letters[@call_letter]] == @call_number
          row[@letters[@call_letter]] = 'X'
          #p row
        end
    end
  end



  def display_board
    
    puts '     B      I      N      G      O'
    
    @bingo_board.each do |row|
      for i in @letter_keys
        if (row[@letters[i]] == 'X' || row[@letters[i]] < 10)
          if (i == 'B')
            print '|   ' + row[@letters[i]].to_s + '  |'
          elsif (i != 'O')
            print '   ' + row[@letters[i]].to_s + '  |'
          else
            puts '   ' + row[@letters[i]].to_s + '  |'
          end
        elsif (row[@letters[i]] < 100)
          if (i == 'B')
            print '|   ' + row[@letters[i]].to_s + '  |'
          elsif (i != 'O')
            print '  ' + row[@letters[i]].to_s + '  |'  
          else
            puts '  ' + row[@letters[i]].to_s + '  |'              
          end  
        else
          if (i == 'B')
            print '|   ' + row[@letters[i]].to_s + '  |'
          elsif (i != 'O')
            print ' ' + row[@letters[i]].to_s + '  |'   
          else
            puts ' ' + row[@letters[i]].to_s + '  |'  
          end
        end
      end
    end
  end

end





# Refactored Solution
class BingoBoard
  def initialize(board)
    @bingo_board = board
  end

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  def call
    @letters = {'B' => 0, 'I' => 1, 'N' => 2, 'G' => 3, 'O' => 4}
    @letter_keys = @letters.keys
    @call_letter = @letter_keys.shuffle[0]
# @call_letter = 'I'
   @call_number = 1 + rand(99)
# @call_number = 31
    return [@call_letter, @call_number]
    # return ['B', 22]
  end


# Check the called column for the number called.
  def check
    @bingo_board.each do |row|
        if row[@letters[@call_letter]] == @call_number
          row[@letters[@call_letter]] = 'X'
        end
    end
  end



  def display_board
    
    puts '     B      I      N      G      O'
    
    @bingo_board.each do |row|
      for i in @letter_keys
        if (row[@letters[i]] == 'X' || row[@letters[i]] < 10)
          (i == 'B')?(print '|   ' + row[@letters[i]].to_s + '  |'):((i != 'O')?(print '   ' + row[@letters[i]].to_s + '  |'):(puts '   ' + row[@letters[i]].to_s + '  |')) 
        elsif (row[@letters[i]] < 100)
          (i == 'B')?(print '|   ' + row[@letters[i]].to_s + '  |'):((i != 'O')?(print '  ' + row[@letters[i]].to_s + '  |'):(puts '  ' + row[@letters[i]].to_s + '  |')) 
        else
          (i == 'B')?(print '|   ' + row[@letters[i]].to_s + '  |'):((i != 'O')?(print ' ' + row[@letters[i]].to_s + '  |'):(puts ' ' + row[@letters[i]].to_s + '  |')) 
        end
      end # end of for
    end # end of do
  end 

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

# Too test the call and check methods, I forced specific values on lines 129, 131, and 133.
# I tried running at least 20 times and was not able to generate a matching call -pair otherwise.

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
#new_game.display_board
p new_game.call
p new_game.check
puts "     "
new_game.display_board
puts "     "
#Reflection

=begin
  
1. How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

This challenge was a lot easier to pseudocode since the game process was broken down into three distinct steps:
(i) Call the ball, (ii) Check the board, and (iii) Display the board.

I think my pseudo-code is improving.
The shape of my pseudocode more closely matches the shape of the iniitial code.

2. What are the benefits of using a class for this challenge?

By using a class, we define the only methods that can be used to define the game's state.
You can't cheat by writing a method that changes the board's numbers.
Changing the numbers on the board requires defining a new game.

3. How can you access coordinates in a nested array?

In a 2-dimensionaal array A (i.e. array of arrays), you can access the element in the i-th row
and j-th column by using (A[i])[j]

4. What methods did you use to access and modify the array?

I used very basic each methods on the board. I also created a hash with keys, the letters in BINGO,
and values, the digits 0 through 4, and used these as indices to access various arrays defined.

5. Give an example of a new method you learned while reviewing the Ruby docs. 
Based on what you see in the docs, what purpose does it serve, and how is it called?

I learned how to pick an element at random from an array using 
the .sample method. Instead of having to randomly select an index and then choosing the element at that index, 
the .sample method is a shortcut. If we have an array called example_array, then example_array.sample returns 
a randomly chosen elemt from example_array.

6. How did you determine what should be an instance variable versus a local variable?

I'm not sure if there is a stricter criterion than ... If a variable needs to be used in more than one class-method,
make it an instance variable. Also, if something outside of the class needs to get or set the variable, then make it an instance variable.
Otherwise, make it a local variable.


7. What do you feel is most improved in your refactored solution?

  The display_board method was easily the most improved after using the ternary operator.
  I tried to find a way to shorten the code in the arguments of the ternary operator, but couldn't.


=end