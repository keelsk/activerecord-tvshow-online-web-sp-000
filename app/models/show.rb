require 'pry'
class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.most_popular_show
    rating = self.highest_rating
    show = Show.find_by(rating: 10)
    show
  end
  
  def self.lowest_rating
    self.minimum(:rating)
  end
end