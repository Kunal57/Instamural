class Team < ActiveRecord::Base
  validates :name, presence: true
  validates :captain_id, presence: true
  validates :sport_id, presence: true

  belongs_to :sport

  has_many :rosters
  has_many :players, through: :rosters
  has_many :attendance
  has_many :away_games, class_name: Game, foreign_key: :away_team_id
  has_many :home_games, class_name: Game, foreign_key: :home_team_id

  def games
    games = []
     games += Game.where(home_team_id: self.id)
     games += Game.where(away_team_id: self.id)
     games
  end

  def full?
    if self.players.count >= self.sport.max_players
      true
    else
      false
    end
  end

  def games_played
    games_played = []
    self.games.each do |game|
      if game.played? == true
        games_played << game
      end
    end
    games_played
  end

  def upcoming_games
    upcoming = []
    self.games.each do |game|
      if game.played? == false
        upcoming << game
      end
    end
  end

  def games_won
    games_won = []
    self.games_played.each do |game|
      if game.winner == self
        games_won << game
      end
    end
    games_won
  end

end
