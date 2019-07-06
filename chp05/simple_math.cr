# Simple Math

# Write a program that prompts for two numbers. 
# Print the sum, difference, product, and quotient of those numbers 
# as shown in the example output:

# Example Output:
#​    What is the first number? 10 ​    
#    What is the second number? 5 ​    
#    10 + 5 = 15 ​    
#    10 - 5 = 5
#    10 * 5 = 50
# ​   10 / 5 = 2

# Constraints:
# 1.) Values coming from users will be strings. 
#     Ensure that you convert these values to numbers before doing the math.
# 2.) Keep the inputs and outputs separate from the numerical conversions 
#     and other processing. 
# 3.) Generate a single output statement with line breaks in the appropriate spots.

print "What is the first number? "
first = gets.not_nil!.to_i

print "What is the second number? "
second = gets.not_nil!.to_i

sum = first + second
difference = first - second
produce = first * second
quotient = first / second

puts "#{first} + #{second} = #{sum}\n" +
     "#{first} - #{second} = #{difference}\n" +
     "#{first} * #{second} = #{produce}\n" +
     "#{first} / #{second} = #{quotient}\n"