require 'pry'
class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.most_popular_show
    rating = self.highest_rating
    song Song.find_by(rating: 10)
    song.name
  end
end