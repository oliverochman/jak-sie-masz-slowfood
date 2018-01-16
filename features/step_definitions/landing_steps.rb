When("I visit the landing page") do
  visit root_path
end

Then("I would like to see {string}") do |content|
  expect(page).to have_content content
end

When("show me the page") do
  save_and_open_page
end
