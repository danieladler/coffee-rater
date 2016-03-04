require 'rails_helper'

describe Rating do
  let(:rating) { Rating.create kaffii_id:1, score:10}
  let(:rating_2) { Rating.create kaffii_id:2, score:8}
  let(:kaffii) { Kaffii.create name:"French Press", origin:"Peru", roast:"Dark"}

  describe "validates" do
    it "belongs to a Kaffii" do
      rating.kaffii = kaffii
      expect(rating { should_belong_to(:kaffii)})
    end

    it "has a score between 1-10" do
      rating.update(score: 11)
      expect(rating.valid?).to eq false
    end
  end

  describe ".average_all class method" do
    it "returns Float average of all Ratings" do
      rating.update(score:4.0)
      rating_2.update(score:6.0)
      expect(Rating.average_all).to eq 5.0
    end
  end
end
