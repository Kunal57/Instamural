require 'rails_helper'

describe TeamsController do
  describe "teams page" do
    it "should assign teams" do
      Team.create(name: "name")
      get :index
      # @post ~> assigns(:teams)
      expect(assigns(:teams).length).to eq (1)
    end
  end

  describe "TEAMS#create" do
    
  end
end
