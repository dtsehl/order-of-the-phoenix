require 'rails_helper'

RSpec.describe 'Potter API Service' do
  it "returns the ID of a particular Harry Potter House" do
    id = PotterAPIService.new.id_of_house('Gryffindor')
    expect(id).to eq("5a05e2b252f721a3cf2ea33f")
  end
  it "returns a particular Harry Potter House" do
    house = PotterAPIService.new.return_house('Gryffindor')
    expect(house.first[:name]).to eq('Gryffindor')
    expect(house.first[:mascot]).to eq('lion')
    expect(house.first[:headOfHouse]).to eq('Minerva McGonagall')
    expect(house.first[:founder]).to eq('Goderic Gryffindor')
  end
  it "returns all characters of a particular House" do
    members = PotterAPIService.new.return_characters_of_house('Gryffindor')
    expect(members.first[:name]).to eq('Hannah Abbott')
    expect(members.first[:house]).to eq('Gryffindor')
  end
end
