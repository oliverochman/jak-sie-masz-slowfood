Given("the following restaurants exist") do |table|
  table.hashes.each do |restaurant|
    FactoryBot.create(:restaurant, restaurant)
  end
end

When("I click on {string} by {string}") do |element, restaurant_name|
  restaurant = Restaurant.find_by(name: restaurant_name)
  within("#restaurant-#{restaurant.id}") do
    click_link_or_button element
  end
end

Then("I should be on the {string} show page") do |restaurant_name|
  restaurant = Restaurant.find_by(name: restaurant_name)
  expect(current_path).to eq restaurant_path(restaurant)
end
