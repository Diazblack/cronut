require './lib/item.rb'
require 'json'
require 'pry'

class ItemsBag
  attr_reader :items

  def initialize(data)
    @items = from_json(data)
  end

  def from_json(path)
    file = File.read(path)
    data_hash = JSON.parse(file, symbolize_names: true)[:items][:item]
    array = []
    data_hash.each do |hash|
       array << Item.new(hash)
    end
    array 
  end
end
