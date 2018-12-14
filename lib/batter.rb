class Batter
  attr_reader :id,
              :type

  def initialize(hash)
    @id = hash[:id]
    @type = hash[:type]
  end
  
end
