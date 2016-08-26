class Game < ActiveRecord::Base
	has_many :attendance
	belongs_to :home_team, class_name: Team
	belongs_to :away_team, class_name: Team


	has_one :sport, through: :home_team

	has_many :players, through: :attendance

	validates :location, presence: true
	validates :schedule, presence: true

end
