require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test
	def setup
		@team = Team.new('Pokemon',100,['landorus','lucario','togekiss'])
	end

	def test_to_hash_created_correctly
		actual = @team.to_hash
		expected = {team_name:'Pokemon', level: 100, points: 0}
		assert_equal(actual,expected)
	end
end