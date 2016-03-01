class Kaffii < ActiveRecord::Base

  validates :name, presence: true
  validates :origin, presence: true
  validates :roast, presence: true

end
