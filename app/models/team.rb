class Team < ActiveRecord::Base
  validates :name, presence: true
  validates :captain_id, presence: true
  validates :sport_id, presence: true
end
