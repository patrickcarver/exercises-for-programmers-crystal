# Mad Lib

# Create a simple mad-lib program that prompts for 
# a noun, a verb, an adverb, and an adjective 
# and injects those into a story that you create.

# Constraints:
# 1.) Use a single output statement for this program. 
# 2.) If your language supports string interpolation or string substitution, 
#     use it to build up the output.

print "Enter a noun: "
noun = gets.not_nil!

print "Enter a verb: "
verb = gets.not_nil!

print "Enter an adjective: "
adjective = gets.not_nil!

print "Enter an adverb: "
adverb = gets.not_nil!

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"