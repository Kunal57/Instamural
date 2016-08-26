class Sport < ActiveRecord::Base
	has_many :teams
	has_many :matches, through: :teams

	validates :name, presence: true
	validates :max_players, presence: true
	validates :min_players, presence: true
	validates :min_players, numericality: { greater_than: 0, message: "must be greater than 0" }

	def matches
		total_matches = []
		self.teams.each do |team|
			total_matches += team.games
		end
		total_matches
	end

end
