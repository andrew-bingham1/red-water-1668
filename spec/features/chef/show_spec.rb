require 'rails_helper'

describe 'Chef Show Page' do
  before (:each) do
    test_data
  end

  describe 'User Story 3' do
    it 'can viist the chef show page' do
      visit chef_path(@chef_1)
    end

    it 'I see a link to view a list of all ingredients that this chef uses in their dishes' do
      visit chef_path(@chef_1)

      within ('#chef_info') do
        expect(page).to have_link("All Ingredients")
      end
    end

    it 'When I click on that link I am taken to a chef ingredients index page' do
      visit chef_path(@chef_1)

      within('#chef_info') do
        click_link("All Ingredients")
      end

      expect(current_path).to eq(chef_ingredients_path(@chef_1))
    end
  end
end

# As a visitor
# When I visit a chef's show page
# I see a link to view a list of all ingredients that this chef uses in their dishes.
# When I click on that link
# I'm taken to a chef's ingredients index page
# and I can see a unique list of names of all the ingredients that this chef uses.