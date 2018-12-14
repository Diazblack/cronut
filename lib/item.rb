require './lib/batter.rb'
require './lib/topping.rb'

class Item
    attr_reader :id,
                :type,
                :name,
                :ppu,
                :batters,
                :toppings

  def initialize(hash)
    @id = hash[:id]
    @type = hash[:type]
    @name = hash[:name]
    @ppu = hash[:ppu]
    @batters = batter_populate(hash[:batters][:batter])
    @toppings = toppings_populate(hash[:topping])
  end

  def batter_populate(data_array)
    array = []
    data_array.each do |hash|
       array << Batter.new(hash)
    end
    array
  end

  def toppings_populate(data_array)
    array = []
    data_array.each do |hash|
       array << Topping.new(hash)
    end
    
    array
  end
end
