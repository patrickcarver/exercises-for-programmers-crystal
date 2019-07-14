# Computing Simple Interest

# Create a program that computes simple interest. 
# Prompt for the principal amount, 
# the rate as a percentage, 
# and the time, 
# and display the amount accrued (principal + interest). 
# The formula for simple interest is
#
#   A = P(1 + rt)
#
# where 
#   P is the principal amount, 
#   r is the annual rate of interest, 
#   t is the number of years the amount is invested, 
#   and A is the amount at the end of the investment. 

# Example Output:
# ​    Enter the principal: 1500
# ​    Enter the rate of interest: 4.3
# ​    Enter the number of years: 4
# ​    ​After 4 years at 4.3%, the investment will be worth $1758. 

# Constraints:
# 1.) Prompt for the rate as a percentage (like 15, not .15). 
#     Divide the input by 100 in your program. 
# 2.) Ensure that fractions of a cent are rounded up to the next penny. 
# 3.) Ensure that the output is formatted as money.

module ComputingSimpleInterest
  extend self

  def run
    print "Enter the principal: "
    principal = gets.not_nil!.to_f

    print "Enter the rate of interest: "
    rate = gets.not_nil!.to_f / 100

    print "Enter the number of years: "
    years = gets.not_nil!.to_i

    amount = calculate(principal, rate, years)

    formatted_rate = format_rate(rate)
    formatted_amount = format_amount(amount)

    puts "After #{years} years at #{formatted_rate}, the investment will be worth #{formatted_amount}."
  end

  private def format_rate(rate)
    (rate * 100).format(decimal_places: 2) + "%"
  end

  private def format_amount(amount)
    "$" + amount.round(2).format(decimal_places: 2)
  end

  private def calculate(principal, rate, years)
    principal * (1 + (rate * years))
  end
end

ComputingSimpleInterest.run