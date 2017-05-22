class CricketTeam
  def initialize(team_name, players, coach)
    
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def get_team_name
    return @team_name
  end

  def get_players
    return @players
  end

  def get_coach
    return @coach
  end

  def get_points
    return @points
  end

  def set_coach(coach)
    @coach = coach
  end

  def add_player(player)
    @players << player
  end

  def find_player(player)
    for person in @players
      if person == player
        return true
      end
    end
    return false
  end  

  def team_result(result)
    if result == "win"
      @points += 2
    end
    if result == "draw"
      @points += 1
    end
  end
end