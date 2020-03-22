require('minitest/autorun')
require('minitest/reporters')
require_relative('../karaoke_bar')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

# A bar should have a name
# A bar should have cash
# A bar should have drinks to sell
# A bar should be able to charge a guest money

class TestKaraoke_bar < MiniTest::Test

  def setup()
    @drink1 = {name: "beer", cost: 4}
    @drink2 = {name: "wine", cost: 5}
    @drink3 = {name: "gin & tonic", cost: 4}
    @drink4 = {name: "vodka red bull", cost: 5}
    @drinks = [@drink1, @drink2, @drink3, @drink4]
    @karaoke_bar = KaraokeBar.new("Radio Star", 2000, @drinks)
  end

  def test_bar_has_name()
    assert_equal("Radio Star", @karaoke_bar.name)
  end

  def test_bar_has_cash()
    assert_equal(2000, @karaoke_bar.cash)
  end

  def test_bar_has_drinks()
    assert_equal(4, @karaoke_bar.inventory)
  end


end
