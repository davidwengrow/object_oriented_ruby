class Vehicle 
  def initialize()
    @speed = 0
    @direction = "north"
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
end

class Car < Vehicle
  def initialize(input_fuel, input_make)
    super() # run the initialize method from the Vehicle class
    # @speed = 0
    # @direction = 'north'
    @fuel = input_fuel
    @make = input_make
  end

  def fuel(input_fuel)
    return @fuel
  end

  def make(input_make)
    return @make  
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  
  def ring_bell
    puts "Ring ring!"
  end
end


car1 = Car.new("diesel", "Honda")
p car1
