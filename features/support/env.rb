require 'coveralls'
Coveralls.wear_merged!('rails')

require 'cucumber/rails'

Chromedriver.set_version '2.33'

Capybara.register_driver :selenium do |app|
  options = Selenium::WebDriver::Chrome::Options.new(
    args: %w[headless disable-popup-blocking]
  )

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: options
  )
end

Capybara.javascript_driver = :selenium

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise 'You need to add database_cleaner to your Gemfile (in the :test group)'\
        ' if you wish to use it.'
end

Cucumber::Rails::Database.javascript_strategy = :truncation
