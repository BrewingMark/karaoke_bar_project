require('minitest/autorun')
require('minitest/reporters')
require_relative('../')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

# A room should have a capacity
# A room should have an array of customers that starts empty
# A room should have a song list, that starts empty?

class TestKaraokeBar < MiniTest::Test

end
