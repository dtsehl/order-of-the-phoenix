require 'rails_helper'

RSpec.describe 'Members index page' do
  it "allows the user to see search results for house Gryffindor after searching for them" do
    name = 'Harry Potter'
    role = 'student'
    house = 'Gryffindor'
    patronus = 'stag'
    id = '5a12292a0f5ae10021650d7e'

    visit '/'
    select 'Gryffindor'
    click_on 'Search For Members'

    expect(current_path).to eq(search_path)
    expect(page).to have_content("Order of the Phoenix Members that Belong to Gryffindor: 195")

    expect(page).to have_content(name)
    expect(page).to have_content(role)
    expect(page).to have_content(house)
    expect(page).to have_content(patronus)
  end
end
