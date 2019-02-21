require "./store_item_module.rb"

class Flowers
  include Sniffing
  attr_reader :color
  attr_writer :color
  def initialize (input_color, input_price, input_type)
    @color = input_color
    @price = input_price
    @type = input_type

  end

  

end

flower1 = Flowers.new("red", 1000, "violet")
flower2 = Flowers.new("blue", 1, "dead")
flower3 = Flowers.new("purple", 10, "orchid")

p flower1
p flower1.color
flower1.dont_eat