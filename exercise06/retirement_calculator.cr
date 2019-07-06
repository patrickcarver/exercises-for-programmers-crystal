# Retirement Calculator

# Create a program that determines how many years you have left until retirement 
# and the year you can retire. It should prompt for your current age 
# and the age you want to retire and display the output as shown 
# in the example that follows.

# Example Output:
# ​    What is your current age? 25
# ​    At what age would you like to retire? 65
# ​    You have 40 years left until you can retire.
# ​    It's 2015, so you can retire in 2055. 

# Constraints: 
# 1.) Again, be sure to convert the input to numerical data before doing any math. 
# 2.) Don’t hard-code the current year into your program. 
#     Get it from the system time via your programming language.

print "What is your current age? "
current_age = gets.not_nil!.to_i

print "At what age would you like to retire? "
retirement_age = gets.not_nil!.to_i

years_until_retirement = retirement_age - current_age
puts "You have #{years_until_retirement} years left until you can retire"

current_year = Time.now.year
retirement_year = current_year + years_until_retirement
puts "It's #{current_year}, so you can retire in #{retirement_year}"