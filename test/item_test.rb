require 'minitest/autorun'
require 'minitest/pride'
require './lib/item.rb'
require 'json'
require 'pry'

class ItemTest < Minitest::Test
  def setup
    file = File.read('./data/cronut.json')
    @data_hash = JSON.parse(file, symbolize_names: true)

    @data = @data_hash[:items][:item][0]
    @item = Item.new(@data)
  end

  def test_if_exist
    assert_instance_of Item, @item
  end

  def test_if_has_attributes

    assert_equal @data[:id], @item.id
    assert_equal @data[:type], @item.type
    assert_equal @data[:name], @item.name
    assert_equal @data[:ppu], @item.ppu
  end


  def test_if_can_have_batter_and_toppings
    assert_equal 4, @item.batters.count
    assert_equal 7, @item.toppings.count

    assert_instance_of Batter, @item.batters.first
    assert_instance_of Topping, @item.toppings.first

    assert_equal "Chocolate", @item.batters[1].type
    assert_equal "5004", @item.toppings.last.id
  end
end
