class Season < ActiveRecord::Base
  attr_accessible :name

  has_many :teams

  validates :name, presence: true

  def current_season_list
  	current_year = Time.now.year

  	seasons = [ "Winter #{current_year}",
  							"Spring #{current_year}",
  							"Summer #{current_year}",
  							"Fall #{current_year}"
  	 					]
  end
end
