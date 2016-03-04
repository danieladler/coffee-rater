class Rating < ActiveRecord::Base
  belongs_to :kaffii

  def self.average_all
    # returns a Float of the average scores for all Ratings
  end

end
