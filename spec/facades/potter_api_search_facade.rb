require 'rails_helper'

RSpec.describe PotterAPISearchFacade do
  before(:each) do
    @potter_facade = PotterAPISearchFacade.new
  end
  it "exists" do
    expect(@potter_facade.class).to eq(PotterAPISearchFacade)
  end
  describe 'instance_methods' do
    it "return_members_of_house" do
      house = 'Gryffindor'
      results = @potter_facade.house_members(house)
      expect(results.first.name).to eq("Hannah Abbott")
    end
  end
end
