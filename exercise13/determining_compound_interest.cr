# Determining Compound Interest

# Write a program to compute the value of an investment compounded over time. 
# The program should ask for 
#   the starting amount, 
#   the number of years to invest, 
#   the interest rate, 
#   and the number of periods per year to compound. 
# The formula you’ll use for this is 
#
#   A = P(1 + r/n)^nt
#
# where 
#   P is the principal amount. 
#   r is the annual rate of interest. 
#   t is the number of years the amount is invested. 
#   n is the number of times the interest is compounded per year.
#   A is the amount at the end of the investment. 

# Example Output:
# ​    What is the principal amount? 1500
# ​    What is the rate? 4.3
# ​    What is the number of years? 6
# ​    What is the number of times the interest is compounded per year? 4
# ​    $1500 invested at 4.3% for 6 years compounded 4 times per year is $1938.84. 

# Constraints:
# 1.) Prompt for the rate as a percentage (like 15, not .15). 
#     Divide the input by 100 in your program. 
# 2.) Ensure that fractions of a cent are rounded up to the next penny. 
# 3.) Ensure that the output is formatted as money.

module DeterminingCompoundInterest
  extend self

  def run 
    print "What is the principal amount? "
    principal = gets.not_nil!.to_i
    
    print "What is the rate? "
    rate = gets.not_nil!.to_f

    print "What is the number of years? "
    years = gets.not_nil!.to_i

    print "What is the number of times the interest is compounded per year? "
    times = gets.not_nil!.to_i

    amount = calculate(principal, rate, years, times)

    puts "$#{principal} invested at #{rate}% for #{years} years compounded #{times} times per year is $#{amount}."
  end

  private def calculate(principal, rate, years, times)
    (principal * (1 + (rate / 100) / times) ** (times * years)).round(2)
  end
end

DeterminingCompoundInterest.run