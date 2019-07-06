# Area of a Rectangular Room

# Create a program that calculates the area of a room. 
# Prompt the user for the length and width of the room in feet. 
# Then display the area in both square feet and square meters. 

# Example Output:
# ​    What is the length of the room in feet? 15
# ​    What is the width of the room in feet? 20
# ​    You entered dimensions of 15 feet by 20 feet.
# ​    The area is
# ​    300 square feet
# ​    27.871 square meters 

# The formula for this conversion is

#     m^2 = f^2 * 0.09290304

# Constraints: 
# 1.) Keep the calculations separate from the output. 
# 2.) Use a constant to hold the conversion factor.

module AreaOfARectangularRoom
  extend self

  FACTOR = 0.09290304

  def calculate_square_feet(length, width)
    length * width
  end

  def convert_to_square_meters(square_feet)
    square_feet * FACTOR
  end

  def calculate(length, width)
    square_feet = calculate_square_feet(length, width)
    square_meters = convert_to_square_meters(square_feet)
    {square_feet, square_meters}
  end

  def get_input
    gets.not_nil!.to_i
  end

  def run
    print "What is the length of the room in feet? "
    length = get_input
    
    print "What is the width of the room in feet? "
    width = get_input

    puts "You entered dimensions of #{length} feet by #{width} feet."

    square_feet, square_meters = calculate(length, width)

    puts "The area is"
    puts "#{square_feet} square feet"
    puts "#{square_meters} square meters"
  end
end

AreaOfARectangularRoom.run