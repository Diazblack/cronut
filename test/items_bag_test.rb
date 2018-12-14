require 'minitest/autorun'
require 'minitest/pride'
require './lib/items_bag.rb'
require './lib/item.rb'
require 'json'
require 'pry'

class ItemsBagTest < Minitest::Test
  def setup
    @path = './data/cronut.json'
    @items_bag = ItemsBag.new(@path)
  end

  def test_if_exist
    assert_instance_of ItemsBag, @items_bag
  end

  def test_if_has_items
    assert_equal 3, @items_bag.items.count
  end
end
