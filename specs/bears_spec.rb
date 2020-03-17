require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bears")
require_relative("../river")
require_relative("../fish")

class BearsTest < MiniTest::Test

  def setup()
    @fish_one = Fish.new("Wanda")
    @fish_two = Fish.new("Blinky")

    @fish = [@fish_one, @fish_two]

    @river = River.new("Clyde", @fish)

    @bear = Bears.new("Iorek", :Polar)
  end

  def test_bear_has_a_name()
    assert_equal("Iorek", @bear.name())
  end

  def test_bear_has_an_empty_stomach()
    assert_equal(0, @bear.stomach_contents())
  end

  def test_bear_eats_a_fish()
    @bear.add_fish_to_stomach(@fish_one)
    assert_equal(1, @river.fish_number())
    assert_equal(1, @bear.stomach_contents())
  end

end
