# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0'
gem 'bootsnap', require: false
gem 'cssbundling-rails'
gem 'jbuilder'
gem 'jsbundling-rails'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.6.5'
gem 'rails', '~> 7.0.4'
gem 'redis', '~> 4.0'
gem 'sprockets-rails'
gem 'stimulus-rails', '~> 1.2', '>= 1.2.1'
gem 'turbo-rails', '~> 1.0', '>= 1.0.1'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'aasm'

group :development, :test do
  gem 'brakeman', '~> 5.3', '>= 5.3.1'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'devise'
  gem 'faker', '~> 2.23'
  gem 'rails_best_practices', '~> 1.23', '>= 1.23.2'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec'
end

group :development do
  gem 'annotate', '~> 3.2'
  gem 'hotwire-livereload'
  gem 'web-console'
  gem 'letter_opener'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner-active_record'
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 6.0', '>= 6.0.1'
  gem 'shoulda-matchers', '~> 5.0'
end
