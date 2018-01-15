Given("I am at latitude: {string}, longitude: {string}") do |lat, lng|
  Rails.application.config.fake_location = {latitude: lat, longitude: lng}
end

Given("the map has been loaded") do
  sleep(0.1)
  expect(page).to have_css '#map .gm-style'
end

Then("the center of the map should be approximately {string} lat and {string} lng") do |lat, lng|
  ACCEPTED_OFFSET = 0.2
  center_lat = page.evaluate_script('map.getCenter().lat();')
  center_lng = page.evaluate_script('map.getCenter().lng();')
  expect(center_lat).to be_within(ACCEPTED_OFFSET).of(lat.to_f)
  expect(center_lng).to be_within(ACCEPTED_OFFSET).of(lng.to_f)
end
