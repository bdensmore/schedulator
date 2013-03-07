require 'spec_helper'

describe Season do
  
  it "is invalid without a name" do
  	expect( Season.new( name: nil) ).to have( 1 ).errors_on( :name )
  end

  it "has a current_season_list method that returns an array of season values" do
  	season = Season.new
  	seasons = ["Winter #{Time.now.year}", 
  		"Spring #{Time.now.year}", "Summer #{Time.now.year}",
  		"Fall #{Time.now.year}" ]
  	expect( season.current_season_list ).to match_array seasons
  end
end
