# Paint Calculator

# Calculate gallons of paint needed to paint the ceiling of a room. 
# Prompt for the length and width, and assume one gallon covers 350 square feet. 
# Display the number of gallons needed to paint the ceiling as a whole number. 

# Example Output:
#
# ​    You will need to purchase 2 gallons of paint to cover 360 square feet. 
#
# Remember, you can’t buy a partial gallon of paint. 
# You must round up to the next whole gallon. 

# Constraints:
# 1.) Use a constant to hold the conversion rate. 
# 2.) Ensure that you round up to the next whole number.

module PaintCalculator
  extend self

  ONE_GALLON_COVERS = 350

  def run
    print "What is the length? "
    length = input

    print "What is the width? "
    width = input

    square_feet = length * width
    gallons = square_feet / ONE_GALLON_COVERS    
    gallons += remaining_gallon(square_feet)

    puts "You will need to purchase #{gallons} gallons of paint to cover #{square_feet} square feet."
  end

  private def input
    gets.not_nil!.to_i
  end

  private def remaining_gallon(square_feet)
    if (square_feet % ONE_GALLON_COVERS) >= 5
      1
    else
      0
    end
  end
end

PaintCalculator.run