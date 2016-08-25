require 'rails_helper'

describe Team do
  it "should have a name" do
    name = "name"
    team = Team.new(name: name)
    expect(team.name).to eq(name)
  end
end
