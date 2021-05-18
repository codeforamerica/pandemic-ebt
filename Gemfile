source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

gem 'aws-sdk-s3', '~> 1'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'cfa-styleguide', git: 'https://github.com/codeforamerica/honeycrisp-gem'
gem 'lograge'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.3'
gem 'rack-cors'
gem 'rails', '>= 6.0.3.5', '< 6.1'
gem 'sass-rails', '~> 6.0'
gem 'sentry-raven'
gem 'skylight'
gem 'smartystreets_ruby_sdk'
gem 'thor'
gem 'uglifier', '>= 1.3.0'
gem "rexml", ">= 3.2.5"

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'jasmine-rails'
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.3'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'webdrivers'
  # Easy installation and use of chromedriver to run system tests with Chrome
  # gem 'chromedriver-helper'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
