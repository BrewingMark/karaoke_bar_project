require('minitest/autorun')
require('minitest/reporters')
require_relative('../karaoke_bar')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

# A bar should have a name
# A bar should have cash
# A bar should have drinks to sell
# A bar should be able to charge a guest money

class TestKaraoke_bar < MiniTest::Test



end
