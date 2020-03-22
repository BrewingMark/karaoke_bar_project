require('minitest/autorun')
require('minitest/reporters')
require_relative('../karaoke_bar')
require_relative('../guest')
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
    @guest = Guest.new("James", 22, 90)
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

  def test_receive_payment()
    @karaoke_bar.receive_payment(10)
    assert_equal(2010, @karaoke_bar.cash)
  end

  # def test_charge_entry_fee()
  #   @guest.charge_entry_fee()
  #   assert_equal(2010, @karaoke_bar.cash)
  #   assert_equal(80, @guest.wallet)
  # end


end
