class Movie < ActiveRecord::Base
    def self.all_ratings
        ratings = Array.new
        self.select("rating").uniq.each{|i| ratings.push(i.rating)}
        ratings.sort.uniq
    end
end
