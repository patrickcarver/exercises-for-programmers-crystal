# Tax Calculator

# Write a simple program to compute the tax on an order amount. 
# The program should prompt for the order amount and the state. 
# If the state is “WI,” then the order must be charged 5.5% tax. 
# The program should display the subtotal, tax, and total for Wisconsin residents 
# but display just the total for non-residents. 

# Example Output
# ​    What is the order amount? 10
# ​    What is the state? WI
# ​    The subtotal is $10.00.
# ​    The tax is $0.55.
# ​    The total is $10.55. 
# Or
# ​    What is the order amount? 10
#     What is the state? MN
# ​    The total is $10.00 

# Constraints:
# 1.) Implement this program using only a simple if statement—don’t use an else clause. 
# 2.) Ensure that all money is rounded up to the nearest cent. 
# 3.) Use a single output statement at the end of the program to display the program results.

module TaxCalculator
  extend self

  def run
    print "What is the order amount? "
    total = gets.not_nil!.to_f

    print "What is the state? "
    state = gets.not_nil!

    if state == "WI"
      tax_rate = 0.055
      tax_amount = total * tax_rate
      subtotal = total
      total = subtotal + tax_amount
      puts "The subtotal is #{format(subtotal)}"
      puts "The tax is #{format(tax_amount)}"    
    end

    puts "The total is #{format(total)}"
  end

  private def format(amount)
    "$" + amount.round(2).format(decimal_places: 2)
  end
end

TaxCalculator.run