# Pizza Party

# Write a program to evenly divide pizzas. 
# Prompt for the number of people, the number of pizzas, 
# and the number of slices per pizza. 
# Ensure that the number of pieces comes out even. 
# Display the number of pieces of pizza each person should get. 
# If there are leftovers, show the number of leftover pieces. 

# Example Output:
# ​    How many people? 8
# ​    How many pizzas do you have? 2
#     How many slices per pizza? 8
#
# ​    ​8 people with 2 pizzas
# ​    Each person gets 2 pieces of pizza.
# ​    There are 0 leftover pieces.

module PizzaParty
  extend self

  def run
    print "How many people? "
    people = input

    print "How many pizzas do you have? "
    pizzas = input
      
    print "How many slices per pizza? "
    slices_per_pizza = input

    total_slices = pizzas * slices_per_pizza
    slices_per_person = total_slices / people
    leftover_pieces = total_slices % people

    puts "#{people} people with #{pizzas} pizzas."
    puts "Each person gets #{slices_per_person} slices of pizza."
    puts "There are #{leftover_pieces} leftover pieces."
  end

  private def input
    gets.not_nil!.to_i
  end
end

print PizzaParty.run