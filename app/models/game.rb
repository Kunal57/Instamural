class Game < ActiveRecord::Base
	has_many :attendance
	belongs_to :team, foreign_key: :home_team_id
	belongs_to :team, foreign_key: :away_team_id
	has_one :sport, through: :teams
	has_many :players, through: :attendance

	validates :location, presence: true
	validates :schedule, presence: true

end
