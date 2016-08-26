class Game < ActiveRecord::Base
	has_many :attendance
	belongs_to :team, foreign_key: :home_team_id
	belongs_to :team, foreign_key: :away_team_id
	has_one :sport, through: :teams
	has_many :players, through: :attendance

	validates :location, presence: true
	validates :schedule, presence: true

	def played?
		if self.home_team_score != nil && self.away_team_id != nil
			return true
		end
	end

	def winner
		if self.played?
			return self.away_team_id if self.away_team_score > self.home_team_score
		else
			return self.away_team_id
		end
	end

end
