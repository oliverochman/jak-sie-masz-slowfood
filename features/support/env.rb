require 'coveralls'
Coveralls.wear_merged!('rails')

require 'cucumber/rails'
require 'webmock/cucumber'

# Chromedriver.set_version '2.33'
#
# Capybara.register_driver :selenium do |app|
#   options = Selenium::WebDriver::Chrome::Options.new(
#     args: %w[ headless disable-popup-blocking ]
#   )
#
#   Capybara::Selenium::Driver.new(
#     app,
#     browser: :chrome,
#     options: options
#   )
# end


#Capybara.javascript_driver = :selenium
#
Chromedriver.set_version '2.33'

Capybara.register_driver :chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
      chromeOptions: {
          args: %w[ headless no-sandbox disable-popup-blocking ]
      }
  )

  Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: capabilities)
end

Capybara.javascript_driver = :chrome

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise 'You need to add database_cleaner to your Gemfile (in the :test group)'\
        ' if you wish to use it.'
end

Cucumber::Rails::Database.javascript_strategy = :truncation


blacklist = ['maps.googleapis.com']
allowed_sites = lambda{|uri|
  blacklist.none?{|site| uri.host.include?(site) }
}
WebMock.disable_net_connect!(allow: allowed_sites)

World FactoryBot::Syntax::Methods
