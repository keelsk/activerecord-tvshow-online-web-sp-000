require 'pry'
class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.maximum(:rating)
  end
  
  def self.most_popular_show
    rating = self.highest_rating
    show = Show.find_by(rating: rating)
    show
  end
  
  def self.lowest_rating
    self.minimum(:rating)
  end
  
  def self.least_popular_show
    rating = self.lowest_rating
    show = Show.find_by(rating: rating)
    show
  end
  
  def self.ratings_sum
    self.sum(:rating)
  end
  
  def self.popular_shows
    self.where(':ratings > ?', 5)

  end
end