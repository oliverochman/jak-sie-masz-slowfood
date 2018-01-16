# Slowfood application and Acceptance-Unit Test Cycle with Ruby on Rails

[![Build Status](https://semaphoreci.com/api/v1/craftacademy/jak-sie-masz-slowfood/branches/development/badge.svg)](https://semaphoreci.com/craftacademy/jak-sie-masz-slowfood)

## at CraftAcademy bootcamp week 8 & 9

**Assignment**

**Set up the application**

1. Perform the following actions in your **terminal**:
* `gem install rails` (to install Rails if not yet done)
* `rails new slow_food_app --database=postgresql --skip-test --skip-bundle`
* `cd slow_food_app`
2. Set up **Version Control** with GitHub
3. Modify **Gemfile** with gems:
```
group :development, :test do
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_bot_rails'
end
```
* Run `bundle install`
* Run `bundle exec rails generate rspec:install`
4. Open **spec/rails_helper.rb** and add the following block:
```
Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
```
5. Make the following modification to the **config/application.rb** file:
```
class Application < Rails::Application
  # Disable generation of helpers, javascripts, css, and view, helper, routing and controller specs
  config.generators do |generate|
    generate.helper false
    generate.assets false
    generate.view_specs false
    generate.helper_specs false
    generate.routing_specs false
    generate.controller_specs false
  end
  ...
end
```
6. Open **.rspec** file and add the following lines:
```
--color
--format documentation
```
7. Run `bundle exec rspec` to check if rspec works
8. Modify **Gemfile** with new gems:
```
group :development, :test do
  [...]
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
end
```
* Run `bundle install`
* Run `bundle exec rails generate cucumber:install`
9. Run `rails db:create` & `rails db:migrate`
10. Run `bundle exec cucumber`to check if cucumber works
11. Set up Travis:
* follow the instructions on https://docs.travis-ci.com/user/getting-started/ but
* modify .travis.yml file with the following block:
```
language: ruby
cache: bundler
rvm:
- 2.4.1
services:
- postgresql
before_script:
- bundle exec rails db:create db:migrate RAILS_ENV=test
script:
- bundle exec rake
notifications:
  email: false
```
12. Set up Coveralls:
* follow the instructions on https://docs.travis-ci.com/user/coveralls/
* Modify **Gemfile** with:
```
gem 'coveralls', require: false
```
* In **spec/spec_helper.rb** add the following lines at the top:
```
require 'coveralls'
Coveralls.wear!
```

**Deploy to Heroku**
