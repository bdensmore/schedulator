class Sport < ActiveRecord::Base
  attr_accessible :active, :name
  has_one :season
  has_many :divisions
end
