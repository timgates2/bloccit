class Rating < ActiveRecord::Base
  enum severity: [ :PG, :PG13, :R ]
end

def self.update_rating(rating_string)
