require( 'minitest/autorun')
require( 'minitest/rg')
require_relative( 'cricket_team')

class TestCricketTeam < MiniTest::Test

  def setup
    @lancs = CricketTeam.new("Lancashire", ["James Anderson", "Liam Livingstone", "Steven Croft", "Haseeb Hameed", "Kyle Jarvis"], "Glen Chapple")
  end

  def test_get_team_name
    assert_equal("Lancashire", @lancs.get_team_name)
  end

  def test_get_players
    assert_equal(["James Anderson", "Liam Livingstone", "Steven Croft", "Haseeb Hameed", "Kyle Jarvis"], @lancs.get_players)
  end

  def test_get_coach
    assert_equal("Glen Chapple", @lancs.get_coach)
  end

  def test_set_coach
    @lancs.set_coach("Mark Chilton")
    assert_equal("Mark Chilton", @lancs.get_coach)
  end

  def test_add_player
    @lancs.add_player("Alex Davies")
    assert_equal(["James Anderson", "Liam Livingstone", "Steven Croft", "Haseeb Hameed", "Kyle Jarvis", "Alex Davies"], @lancs.get_players)
  end

  def test_find_player_true
    assert_equal(true, @lancs.find_player("Kyle Jarvis"))
  end

  def test_find_player_false
    assert_equal(false, @lancs.find_player("Nathan Buck"))
  end

  def test_team_result_win
    @lancs.team_result("win")
    assert_equal(2, @lancs.get_points)
  end

  def test_team_result_draw
    @lancs.team_result("draw")
    assert_equal(1, @lancs.get_points)
  end

  def test_team_result_loss
    @lancs.team_result("loss")
    assert_equal(0, @lancs.get_points)
  end
end