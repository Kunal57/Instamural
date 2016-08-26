class User < ActiveRecord::Base
  has_secure_password

  # has_many  :attendance
  has_many  :rosters, foreign_key: :player_id
  has_many  :squads, class_name: Team, foreign_key: :captain_id
  has_many  :teams, through: :rosters
  # has_many  :games, through: :teams

  def wins
    wins = 0
    self.teams.each do |team|
      wins += team.wins
    end
    wins
  end

  def games
    games = []
      self.teams.each do |team |
        games += team.games
      end
    games
  end

  def player_games_played
    games_played = []
    self.games.each do |game|
      if game.played?
        games_played << game
      end
    end
    return games_played
  end


end
