Then("I should see the map") do
  sleep(5)
  expect(page).to have_css '#map .gm-style'
end

Then("I should see {int} markers") do |int|
  markers_count = page.evaluate_script('map.markers.length;')
  expect(markers_count).to eq int.to_i
end
