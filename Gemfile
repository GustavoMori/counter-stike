# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'bootsnap', require: false
gem 'jsonapi-serializer', '~> 2.2'
gem 'lograge', '~> 0.12.0'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.4', '>= 7.0.4.3'
gem 'sqlite3', '~> 1.4'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'debug'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 3.1'
  gem 'pry'
  gem 'pry-nav'
  gem 'rspec-rails', '~> 5.1'
  gem 'rubocop', '~> 1.48'
  gem 'rubocop-performance', '~> 1.16'
  gem 'rubocop-rails', '~> 2.18'
  gem 'rubocop-rspec', '~> 2.19'
end

group :test do
  gem 'super_diff'
  gem 'webmock'
end
