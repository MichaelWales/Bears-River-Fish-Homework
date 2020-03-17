require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../river")
require_relative("../fish")

class RiverTest < MiniTest::Test

  def setup()
    @fish_one = Fish.new("Wanda")
    @fish_two = Fish.new("Blinky")

    @fish = [@fish_one, @fish_two]

    @river = River.new("Clyde", @fish)
  end

  def test_river_has_a_name()
    assert_equal("Clyde", @river.name())
  end

  def test_river_contents()
    assert_equal(2, @river.fish_number)
  end

end
