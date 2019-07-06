# Printing Quotes

# Create a program that prompts for a quote and an author. 
# Display the quotation and author as shown in the example output.

# Constraints:
# 1.) Use a single output statement to produce this output, 
#     using appropriate string-escaping techniques for quotes. 
# 2.) If your language supports string interpolation or string substitution, 
#     don’t use it for this exercise. Use string concatenation instead.

print "What is the quote? "
quote = gets.not_nil!
print "Who said it? "
author = gets.not_nil!
puts author + " says, \"" + quote + "\""