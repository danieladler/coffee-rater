require 'rails_helper'

describe Kaffii do
  let(:kaffii) { Kaffii.create name:"French Press", origin:"Peru", roast:"Dark"}

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
end
