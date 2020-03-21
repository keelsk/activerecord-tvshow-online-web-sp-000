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
end