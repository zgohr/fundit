source 'https://rubygems.org'
ruby '2.0.0'
#ruby-gemset=fundit

gem 'rails', '4.0.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem "twitter-bootstrap-rails"
gem 'stripe'
gem 'rest-client'
gem 'oauth2'
gem 'pony'
gem 'therubyracer'
gem 'less-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier'
  gem 'coffee-rails'
end

gem 'jquery-rails'

group :test, :development do
  gem 'rspec-rails'
  gem 'sqlite3'
  gem 'pry'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'guard-rspec'
  gem 'spork-rails', github: 'sporkrb/spork-rails'
  gem 'guard-spork'
  gem 'childprocess'
end

group :test do
  gem 'capybara'
end

group :production do
  gem 'pg'
  gem 'rack-ssl'
  gem 'rails_12factor'
end

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '3.0.1'
