class River

  attr_reader :name, :fish
  attr_writer :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def fish_number
    return @fish.size
  end

  def fish_eaten_by_bear(fish)
    @fish.delete(fish)
  end

end
