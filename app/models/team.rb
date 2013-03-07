class Team < ActiveRecord::Base
  attr_accessible :is_paid, :name, :player_count
  belongs_to :division
end
