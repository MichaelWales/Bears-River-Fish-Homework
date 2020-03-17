class Bears

  attr_reader :name, :type
  attr_writer :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  

end
