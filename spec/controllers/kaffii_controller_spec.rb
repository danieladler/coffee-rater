require 'rails_helper'

RSpec.describe KaffiiController, type: :controller do
  describe "GET index" do
    it "returns 200" do
      get :index
      expect(response.status).to eq 200
    end

    # it "displays all kaffiis" do
    #   get :index
    #   expect(Kaffii.count)
    # end
  end


  

  describe "GET show" do
    it "returns 200" do
      get :show
      expect(response.status).to eq 200
    end

    it "has a single kaffii" do
      # expect id in params to be same id as kaffii on the view
    end
  end




  describe "POST create" do
    it "adds a kaffii to the database" do
      count = Kaffii.count
      post :create, kaffii: {name: "test", origin: "Iceland", roast: "Very Dark"} # 2nd arg here is params
      expect(Kaffii.count).to eq count + 1
    end

   # it "redirects to home page" do
   #   post :create, kaffii: {name: "second", origin: "Brazil", roast: "Medium"} # 2nd arg here is params
   #   expect(response).to redirect_to "/"
   #   # ALT: expect(response.location).to eq "/"
   # end
  end



end
