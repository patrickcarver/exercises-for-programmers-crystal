# Counting the Number of Characters

# Create a program that prompts for an input string 
# and displays output that shows the input string 
# and the number of characters the string contains.

# Constraints:
# Be sure the output contains the original string.
# Use a single output statement to construct the output.
# Use a built-in function of the programming language to determine the length of the string.

print "What is the input string? "
input = gets

# The type for `gets` is (String | Nil), so we can't just invoke `size` on `input`
# because it could be `Nil` which does not have a `size` method
if input
  puts "#{input} has #{input.size} characters"
else
  exit
end
