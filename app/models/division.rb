class Division < ActiveRecord::Base
  attr_accessible :name, :sport_id
  belongs_to :sport
  has_many :teams
end
