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
    let(:kaffii) {Kaffii.create(id: 1, name:"test", origin: "Oregon", roast:"dark")}

    it "returns 200" do
      get :show, id: kaffii.id
      expect(response.status).to eq 200
    end

    it "matches the right instance" do
      get :show, id: kaffii.id
      expect(assigns(:kaffii).id).to eq(kaffii.id)
    end
  end

  describe "GET new" do
    it "returns 200" do
      get :new
      expect(response.status).to eq 200
    end

    it "starts with a new, unsaved instance" do
      get :new
      expect(assigns(:kaffii).id).to eq nil
    end
  end

  describe "POST create" do
    it "adds a kaffii to the database" do
      count = Kaffii.count
      post :create, kaffii: {name: "test", origin: "Oregon", roast: "dark"} # 2nd arg here is params
      expect(Kaffii.count).to eq count + 1
    end
  #
  #  # it "redirects to home page" do
  #  #   post :create, kaffii: {name: "second", origin: "Brazil", roast: "Medium"} # 2nd arg here is params
  #  #   expect(response).to redirect_to "/"
  #  #   # ALT: expect(response.location).to eq "/"
  #  # end
  end

  # describe "DELETE destroy" do
    # pass in specific kaffii from params

    # it "removes a kaffii from the database" do
    #   count = Kaffii.count
    #   expect {delete :destroy, id: [current_kaffii.id]}.to change { Kaffii.count}.by(-1)
    # end
  # end



end
