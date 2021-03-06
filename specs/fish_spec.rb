require("minitest/autorun")
require('minitest/reporters')

require_relative("../fish")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class FishTest < MiniTest::Test

  def setup()
    @fish_one = Fish.new("Wanda")
    @fish_two = Fish.new("Blinky")

    @fish = [@fish_one, @fish_two]
  end

  # The one where fish_one has a name
  def test_fish_one_has_a_name()
    assert_equal("Wanda", @fish_one.name())
  end

  # The one where fish_two has a name
  def test_fish_two_has_a_name()
    assert_equal("Blinky", @fish_two.name())
  end

end
