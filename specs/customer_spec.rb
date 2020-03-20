require('minitest/autorun')
require('minitest/reporters')
require_relative('../customer')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCustomer < MiniTest::Test

  def setup()
    @customer1 = Customer.new("Mark", 28, 150)
    @customer2 = Customer.new("Johny", 27, 85)
    @customer3 = Customer.new("Michelle", 30, 60)
    @customer4 = Customer.new("Alex", 20, 200)
    @customer5 = Customer.new("Craig", 26, 100)
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

end
