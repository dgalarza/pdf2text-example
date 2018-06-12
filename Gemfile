source "http://rubygems.org"

ruby "2.5.1"

gem "flutie"
gem "honeybadger"
gem "jquery-rails"
gem "puma"
gem "rack-canonical-host"
gem "rails", "~> 5.2.0"
gem "sass-rails", "~> 5.0"
gem "sprockets", ">= 3.0.0"
gem "title"
gem "uglifier"
gem "bootsnap", require: false
gem "simple_form"
gem "pdf-reader"

group :development do
  gem "listen"
  gem "rack-mini-profiler", require: false
  gem "spring"
  gem "web-console"
end

group :development, :test do
  gem "awesome_print"
  gem "bundler-audit", ">= 0.5.0", require: false
  gem "dotenv-rails"
  gem "pry-byebug"
  gem "pry-rails"
end

group :test do
  gem "launchy"
  gem "simplecov", require: false
  gem "sinatra"
  gem "webmock"
  gem "capybara_discoball"
end

gem "suspenders", group: [:development, :test]

gem 'bourbon', '~> 5.0'
gem 'neat', '~> 2.1'
gem 'spring-commands-rspec', group: :development
gem 'rspec-rails', '~> 3.6', group: [:development, :test]
gem 'shoulda-matchers', group: :test
gem 'capybara-webkit', group: :test
