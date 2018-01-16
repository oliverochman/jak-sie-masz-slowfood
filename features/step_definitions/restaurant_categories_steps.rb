Given("the following categories exist") do |table|
  table.hashes.each do |restaurant_category|
    FactoryBot.create(:restaurant_category, restaurant_category)
  end
end

Given("the following restaurants within categories exist") do |table|
 table.hashes.each do |restaurant|
   category = RestaurantCategory.find_by(name: restaurant[:category])
   FactoryBot.create(:restaurant,
    name: restaurant[:name],
    restaurant_category: category,
    street_address: restaurant[:street_address],
    city: restaurant[:city])
  end
end

Then("I would like to see {string} in the {string} category") do |restaurant_name, category_name|
  within "#restaurant_category-#{category_name}" do
    expect(page).to have_content category_name
  end
end

Then("I would not like to see {string} in the {string} category") do |restaurant_name, category_name|
  within "#restaurant_category-#{category_name}" do
    expect(page).not_to have_content restaurant_name
  end
end
