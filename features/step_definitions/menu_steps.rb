Then("I would like to see {string} under the {string} menu") do |product, menu|
  menu = Menu.find_by(name: menu)
  within("#menu-#{menu.id}") do
    expect(page).to have_content product and menu.name
  end
end
