class User < ActiveRecord::Base
  has_secure_password

  has_many  :attendance
  has_many  :roster
  belongs_to  :team, foreign_key: :captian_id
  has_many  :teams, through: :roster
  has_many  :games, through: :teams

  def wins
    wins = 0
    self.teams.each do |team|
      wins += team.wins
    end
    wins
  end

end
