require 'rails_helper'

RSpec.describe "Search for fuel stations" do
  context "searching by zipcode" do
    it "returns propane and electric stations within 6 miles" do

      visit '/'

      fill_in '#search-field', with: "80203"
      click "Locate"

      expect(path).to eq("/search?zipcode=80203")
      expect(page).to have_content("Name")
      expect(page).to have_content("Address")
      expect(page).to have_content("Fuel Types")
      expect(page).to have_content("Distance")
      expect(page).to have_content("Access Times")
    end
  end
end
