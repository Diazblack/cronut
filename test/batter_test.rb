require 'minitest/autorun'
require 'minitest/pride'
require './lib/batter.rb'

class BatterTest < Minitest::Test
  def setup
    @hash = {:id=>"1001", :type=>"Regular"}
    @batter = Batter.new(@hash)
  end

  def test_if_exist
    assert_instance_of Batter, @batter
  end

  def test_if_it_has_attributes
    assert_equal @hash[:id], @batter.id
    assert_equal @hash[:type], @batter.type
  end
end
