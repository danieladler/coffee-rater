require 'rails_helper'

describe Kaffii do
  let(:kaffii) { Kaffii.create name:"French Press", origin:"Peru", roast:"dark"}
  let(:rating_1) { Rating.create kaffii_id: kaffii.id, score: 10}
  let(:rating_2) { Rating.create kaffii_id: kaffii.id, score: 8}

  describe "validations" do
    it "requires the presence of name" do
      kaffii.update(name: nil) # doing the update runs validations, beyond just setting the name to nil
      expect(kaffii.valid?).to eq false
    end

    it "requires presence of origin" do
      kaffii.update(origin: nil)
      expect(kaffii.valid?).to eq false
    end

    it "requires presence of roast" do
      kaffii.update(roast: nil)
      expect(kaffii.valid?).to eq false
    end

    it "requires roast include one of 'light', 'medium' or 'dark'" do
      kaffii.update(roast: "murky")
      expect(kaffii.valid?).to eq false
    end
  end

  describe ".average_rating" do
    it "returns the average of multiple scores" do
      rating_1
      rating_2
      expect(kaffii.average_rating).to eq 9.0
    end

    it "returns a float" do
      expect(kaffii.average_rating.class).to eq Float
    end

    it "averages all scores belonging to a single Kaffii" do
      rating_1.update(score: 1.0)
      rating_2.update(kaffii_id: 0)
      expect(kaffii.average_rating).to eq 1.0 # because now there is only one
      # score, from rating_1, factoring into this Kaffii's average
    end
  end
end
