class Game < ActiveRecord::Base
	belongs_to :home_team, class_name: :Team
	belongs_to :away_team, class_name: :Team
	has_many :players, class_name: :User, foreign_key: :player_id

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
