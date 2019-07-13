# Self Checkout
#
# Create a simple self-checkout system. 
# Prompt for the prices and quantities of three items. 
# Calculate the subtotal of the items. 
# Then calculate the tax using a tax rate of 5.5%. 
# Print out the line items with the quantity and total, 
# and then print out the subtotal, tax amount, and total. 

# Example Output:
# ​    Enter the price of item 1: 25
# ​    Enter the quantity of item 1: 2
# ​    Enter the price of item 2: 10
# ​    Enter the quantity of item 2: 1
# ​    Enter the price of item 3: 4
# ​    Enter the quantity of item 3: 1
# ​    Subtotal: $64.00
# ​    Tax: $3.52
# ​    Total: $67.52

# Contraints:
# 1.) Keep the input, processing, and output parts of your program separate. 
# 2.) Collect the input, 
#     then do the math operations and string building, 
#     and then print out the output. 
# 3.) Be sure you explicitly convert input to numerical data before doing any calculations.

module SelfCheckout
  extend self

  TAX_RATE = 0.055

  def run
    items = [] of Int32

    (1..3).each do |index|
      print "Enter the price of item #{index}: "
      price = input
      print "Enter the quantity of item #{index}: "
      quantity = input

      items << (price * quantity)
    end

    subtotal = items.sum.to_f32.round(2)
    tax_amount = (subtotal * TAX_RATE).round(2)
    total = (subtotal + tax_amount).round(2)

    puts "Subtotal: $#{subtotal}"
    puts "Tax: $#{tax_amount}"
    puts "Total: $#{total}"
  end

  private def input
    gets.not_nil!.to_i
  end
end

SelfCheckout.run