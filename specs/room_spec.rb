require('minitest/autorun')
require('minitest/reporters')
require_relative('../room')
require_relative("../customer")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

# A room should have a number
# A room should have an array of customers that starts empty
# A room should have a song list, that starts empty?
#  A room should have a capacity

class TestRoom < MiniTest::Test

  def setup()
    @room = Room.new(1)
    @customer = Customer.new("James", 22, 90)
  end

  def test_room_has_number()
    assert_equal(1, @room.number)
  end

  def test_foom_starts_empty()
    assert_equal(0, @room.occupants())
  end

  def test_song_list_starts_empty()
    assert_equal(0, @room.song_queue())
  end

  def test_check_a_guest_into_a_room()
    @room.check_in_customer(@customer)
    assert_equal(1, @room.occupants())
  end

  def check_in_customer_but_room_is_full()
    @room.check_in_customer(@customer)
    @room.check_in_customer(@customer)
    @room.check_in_customer(@customer)
    @room.check_in_customer(@customer)
    @room.check_in_customer(@customer)
    @room.check_in_customer(@customer)
    @room.check_in_customer(@customer)
    @room.check_in_customer(@customer)
    assert_equal("The room is full.", @room.check_in_customer(@customer))
  end

end
