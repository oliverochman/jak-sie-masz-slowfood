Given("I visit orders page") do
  visit orders_path
end

When("I click on {string} button") do |element|
  click_button element
  sleep(2)
  @stripe_iframe = all('iframe[name=stripe_checkout_app]').last
end

When("I fill I fill in stripe form field {string} with {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I fill I fill in stripe form field {string} {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I submit the stripe form") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should on the {string} page") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
