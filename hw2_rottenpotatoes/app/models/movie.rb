class Movie < ActiveRecord::Base

  def self.all_ratings
  	Movie.all.map(&:rating).compact.uniq.sort
  end
end
