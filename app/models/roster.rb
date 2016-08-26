class Roster < ActiveRecord::Base
  belongs_to :player, class_name: 'User'
  belongs_to :team
end
