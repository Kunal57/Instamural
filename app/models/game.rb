class Game < ActiveRecord::Base
	validates :location, presence: true
	validates :schedule, presence: true
end
