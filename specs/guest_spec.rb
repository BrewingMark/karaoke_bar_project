require('minitest/autorun')
require('minitest/reporters')
require_relative('../guest')
require_relative('../song')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCustomer < MiniTest::Test

  def setup()
    @customer1 = Guest.new("Mark", 28, 150)
    @customer2 = Guest.new("Johny", 27, 85)
    @customer3 = Guest.new("Michelle", 30, 60)
    @customer4 = Guest.new("Alex", 20, 200)
    @customer5 = Guest.new("Craig", 26, 100)
  end

  def test_customer_has_name()
    assert_equal("Mark", @customer1.name)
  end

  def test_customer_has_age()
    assert_equal(30, @customer3.age)
  end

  def test_customer_has_wallet()
    assert_equal(100, @customer5.wallet)
  end

  # A guest should be able to pay the bar money

  def test_make_payment()
    @customer4.make_payment(10)
    assert_equal(190, @customer4.wallet)
  end

  # Still to work on - Guests having fav song and reacting to
  # it if it's in a rooms playlist.

  # def test_guest_has_favorite_song()
  #   assert_equal("The Modern Leper", @customer1.favorite_song())
  # end

end
