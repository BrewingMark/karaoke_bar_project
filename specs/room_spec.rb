require('minitest/autorun')
require('minitest/reporters')
require_relative('../')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestKaraokeBar < MiniTest::Test

end
