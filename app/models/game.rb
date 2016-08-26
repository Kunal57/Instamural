class Game < ActiveRecord::Base
	has_many :attendance
	belongs_to :home_team, class_name: Team
	belongs_to :away_team, class_name: Team


	has_one :sport, through: :home_team

	has_many :players, through: :attendance

	validates :location, presence: true
	validates :schedule, presence: true

	def played?
		if self.home_team_score != nil && self.away_team_id != nil
			return true
		end
		false
	end

	def winner
		if self.played?
			if self.away_team_score > self.home_team_score
				return self.away_team
			else
				return self.home_team
			end
		end
	end

end
