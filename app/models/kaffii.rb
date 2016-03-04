class Kaffii < ActiveRecord::Base

  validates :name, :origin, :roast, presence: true
  # validates :origin, presence: true
  # validates :roast, presence: true

  # this approach allows for roasts that contain the 3 words but can also contain other words.
  # Regexp.union() is neat – it generates a regex from whatever's passed in!
  re = Regexp.union("light","medium","dark")
  validates :roast, format: { with: re,
    message: "roast must be light, medium or dark"}

  # # this approach validates *strictly* for light medium or dark as the roast
  # validates :roast, inclusion: { in: %w(light medium dark),
  #   message: "roast must be light, medium or dark"}

end
