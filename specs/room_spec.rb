require('minitest/autorun')
require('minitest/reporters')
require_relative('../room')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

# A room should have a number
# A room should have a capacity
# A room should have an array of customers that starts empty
# A room should have a song list, that starts empty?

class TestRoom < MiniTest::Test

  def setup()
    @room = Room.new(1)
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

end
