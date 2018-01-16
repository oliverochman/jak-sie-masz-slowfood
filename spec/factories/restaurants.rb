FactoryBot.define do
  factory :restaurant do
    restaurant_category
    name "MyString"
    description "My String"
    city "Göteborg"
    post_code "410 00"
    street_address "Stora vägen"
  end
end
