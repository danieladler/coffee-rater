class Rating < ActiveRecord::Base
  belongs_to :kaffii
  validates :score, :inclusion => 1..10

  def self.average_all
    # returns a Float of the average scores for all Ratings
    average(:score).to_f
  end

end
