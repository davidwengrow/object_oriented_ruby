module Beeping
  def honk_horn 
    puts "Beeeeeeep"
  end
end



class Car
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end 

  class Vehicle < Car
    include Beeping

  
  end
end
#   def honk_horn
#     puts "Beeeeeeep!"
#   end
# end

class Bike
  

  def ring_bell
    puts "Ring ring!"
  end
end
vehicle1 = Vehicle.new
p vehicle1