class Team < ActiveRecord::Base
  validates :name, presence: true
  validates :captain_id, presence: true
  validates :sport_id, presence: true
  belongs_to :sport
  belongs_to :roster
  has_many :players, through: :roster
  has_many :attendance
  has_many :games, as: :home_team
  has_many :games, as: :away_team
end
