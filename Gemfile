source 'https://rubygems.org'

ruby '2.2.3'

# Rails Dependencies
gem 'rails', '4.2.4'
gem 'sqlite3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

# Clipboard Dependencies
gem 'figaro'
gem 'omniauth-facebook'

source 'https://rails-assets.org' do
  gem 'rails-assets-berniestrap'
end

# Environment Dependencies
group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'pry'
  #----------------
  gem 'byebug'
end

group :test do
  gem 'database_cleaner'
  gem 'faker'
  gem 'shoulda'
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
