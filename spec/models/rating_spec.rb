require 'rails_helper'

describe Rating do
  let (:rating) { Rating.create cafe_id:1, rating:10}

  describe "validations"
    it "belongs to a Kaffii" do

    end

    it "has a score between 1-10" do

    end
  end

  describe ".average_all class method" do
    it "returns Float average of all Ratings" do

    end
  end
end
