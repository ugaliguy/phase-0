# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)

#   # This line takes coded message and constructs an array consisting of the individual letters 
#   # in coded_message converted to lower case.

#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",   # This hash is adequate for getting the job done, but it shouldn't be necessary.
#             "i" => "e",   # This could probably be simplified with an array and the mod operator.
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # What is #each doing here? Each is looking at each letter of coded_message
#     found_match = false  # Why would this be assigned to false from the outset?  
#                          # So that the if-end loop toward the end of the code runs.
#                          # What happens when it's true? A match between the code letter and 
#                          # the code key have been matched.
#     cipher.each_key do |y| # What is #each_key doing here? It is iterating through the keys of the cipher hash.
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         # It is comparing the letter from the message with the key from the hash.
#         # x comes from the message array input.
#         # y comes from the keys of the cipher hash.
#         # x is a letter from the code and y is the key to breaking the code.
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here? Because i does not need to execute the rest of the code. It has found a match.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" 
#       # What the heck is this doing? This says if any of the above symbols show up in the coded message, then these are 
#       # interpreted as spaces in the deciphered message.
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
#         # This constructs an array with the integers 0 through 9.
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for? Any characters in the message that have not yet been translated.
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning?
#   # This returns the deciphered message by concatenating the deciphered characters.
# end

# Your Refactored Solution
def dr_evils_cipher(coded_message)
  code_letters = coded_message.downcase.split("") 
  decoded_sentence = []
  cipher = ('a'..'z').to_a
  code_letters.each do |char| 
    found_match = false

    cipher.each_index do |indx| 
      if char == cipher[indx]  
        decoded_sentence << cipher[(indx -4)%26] # Calculate the index shifted by 4 modulo 26.
        found_match = true
        break  
      elsif ["@","#","$","%","^","&","*" ].include?(char)
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(char) 
        decoded_sentence << char
        found_match = true
        break
      end
    end
    if not found_match  # What is this looking for? Any characters in the message that have not yet been translated.
      decoded_sentence << char
    end
  end
  decoded_sentence = decoded_sentence.join("")


end


# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!

# 1. What concepts did you review in this challenge?

# Arrays and their methods. I learned some short cuts.
# For example ('a'..'z').to_a will give me an array of the letters of the alphabet.

# 2. What is still confusing to you about Ruby?

# Nothing confusing. Now I find myself trying to use JavaScript syntax,
# but otherwise t is just a matter of mastering a lot of things.
# I haven't mastered yet..

# 3. What are you going to study to get more prepared for Phase 1?

# I'm going to try to do the medium to difficult problems on Rubeque.