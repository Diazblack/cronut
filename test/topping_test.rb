require 'minitest/autorun'
require 'minitest/pride'
require './lib/batter.rb'
require './lib/topping.rb'

class ToppingTest < Minitest::Test

  def setup
    @hash = {:id=>"5001", :type=>"None"}
    @topping = Topping.new(@hash)
  end

  def test_if_exist
    assert_instance_of Topping, @topping
  end

  def test_if_it_has_attributes
    assert_equal @hash[:id], @topping.id
    assert_equal @hash[:type], @topping.type
  end
end
