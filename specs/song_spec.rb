require('minitest/autorun')
require('minitest/reporters')
require_relative('../song')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

# A song should have a title
# A song should have an artist

class TestSong < MiniTest::Test

  def setup()
    @song1 = Song.new("I will always love you", "Celline Dion")
  end

  def test_song_has_a_name()
    assert_equal("I will always love you", @song1.song_name)
  end

  def test_song_has_an_artist()
    assert_equal("Celline Dion", @song1.artist)
  end

end
