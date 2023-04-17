require 'rails_helper'

RSpec.describe Dish, type: :model do
  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :description}
  end
  describe "relationships" do
    it {should belong_to :chef}
    it {should have_many :dish_ingredients}
    it {should have_many(:ingredients).through(:dish_ingredients)}
  end

  describe "instance methods" do
    before (:each) do
      test_data
    end

    describe "#total_calories" do
      it 'can calculate the total calories for a dish' do
        expect(@dish_1.total_calories).to eq(600)

        @ingredient_1.update(calories: 1000)

        expect(@dish_1.total_calories).to eq(1400)
      end
    end
  end
end