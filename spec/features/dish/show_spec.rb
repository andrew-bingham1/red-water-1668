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

    it 'can see a list of ingredients for that dish' do
      visit dish_path(@dish_1)

      within("#ingredients") do
        expect(page).to have_content(@ingredient_1.name)
        expect(page).to have_content(@ingredient_2.name)
      end
    end
    
    it 'can see the total caloiries for that dish' do
      visit dish_path(@dish_1)

      within("#dish_info") do
        expect(page).to have_content(@dish_1.total_calories)
      end
    end

    it 'can see the chef name' do
      visit dish_path(@dish_1)

      within("#dish_info") do
        expect(page).to have_content(@chef_1.name)
      end
    end
  end

  describe 'User Story 2' do
    it 'can see a form to add an ingredient' do
      visit dish_path(@dish_1)


      within("#new_ingredient") do
        expect(page).to have_button("Add Ingredient")
      end
    end

    it 'can add an ingredient to the dish' do
      visit dish_path(@dish_1)

      within("#new_ingredient") do
        fill_in :ingredient_id, with: @ingredient_3.id
        click_button "Add Ingredient"
      end

      visit dish_path(@dish_1)

      within("#ingredients") do
        expect(page).to have_content(@ingredient_3.name)
      end
    end
  end
end

