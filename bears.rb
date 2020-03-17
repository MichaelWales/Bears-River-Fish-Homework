class Bears

  attr_reader :name, :type
  attr_writer :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
    @fish = 0
  end

  def stomach_contents()
    return @stomach.size
  end

  def add_fish_to_stomach(fish)
    @stomach << fish
  end

  #i have two other methods - take fish and food count (asked in extension)
  # def food_count()
  #   @fish
  # end
  #
  # def take_fish()
  #   @fish += 1
  # end
end
