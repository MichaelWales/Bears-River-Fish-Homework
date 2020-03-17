require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../river")
require_relative("../fish")
require_relative("../bears")

class BearsTest < MiniTest::Test

  def setup()
    @fish_one = Fish.new("Wanda")
    @fish_two = Fish.new("Blinky")

    @fish = [@fish_one, @fish_two]

    @river = River.new("Clyde", @fish)

    @bear = Bear.new("Iorek", "Polar")
  end

  def test_bear_has_a_name()
    assert_equal("Iorek", @bear.name())
  end

end
