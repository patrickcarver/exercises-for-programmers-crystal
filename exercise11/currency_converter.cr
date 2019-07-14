# Currency Converter

# Write a program that converts currency. 
# Specifically, convert euros to U.S. dollars. 
# Prompt for the amount of money in euros you have,
# and prompt for the current exchange rate of the euro. 
# Print out the new amount in U.S. dollars. 
# The formula for currency conversion is
#
#   amount_to = (amount_from * rate_from) / rate_to
#
# where 
#   Amount to is the amount in U.S. dollars. 
#   Amount from is the amount in euros. 
#   Rate from is the current exchange rate in euros. 
#   Rate to is the current exchange rate of the U.S. dollar.

# Example Output:
#   How many euros are you exchanging? 81
# ​  What is the exchange rate? 137.51
# ​  81 euros at an exchange rate of 137.51 is
# ​  111.38 U.S. dollars. 

# Constraints: 
# 1.) Ensure that fractions of a cent are rounded up to the next penny. 
# 2.) Use a single output statement.

module CurrencyConverter
  extend self

  def run
    print "How many euros are you exchanging? "
    euros = gets.not_nil!.to_f

    print "What is the exchange rate? "
    rate = gets.not_nil!.to_f

    usd = convert_from_euro_to_usd(euros, rate)

    formatted_euros = euros.format(decimal_places: 2)
    formatted_rate = rate.format(decimal_places: 2)
    formatted_usd = usd.format(decimal_places: 2)

    puts "#{formatted_euros} euros at an exchange rate of #{formatted_rate} is"
    puts "#{formatted_usd} U.S. dollars."
  end

  def convert_from_euro_to_usd(euros, rate)
    ((euros * rate) / 100).round(2)
  end
end

CurrencyConverter.run