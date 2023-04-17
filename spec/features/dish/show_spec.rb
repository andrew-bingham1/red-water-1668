require 'rails_helper'

RSpec.describe 'Dish Show Page', type: :feature  do
  before (:each) do
    test_data
  end
  describe 'User Story 1' do
    it 'can visit the dish show page' do
      visit dish_path(@dish_1)
    end

    it 'can see the dish name and description' do
      visit dish_path(@dish_1)

      within ('#dish_info') do
        expect(page).to have_content(@dish_1.name)
        expect(page).to have_content(@dish_1.description)
      end
    end
  end
end

# Story 1 of 3

# As a visitor
# When I visit a dish's show page
# I see the dish’s name and description
# And I see a list of ingredients for that dish
# and a total calorie count for that dish
# And I see the chef's name.