source 'https://rubygems.org'

# read more @ http://bundler.io/gemfile.html

gem 'rails'       , '~> 4.0.3'  #  4.0.3 <= version < 4.1
gem 'nokogiri'  # ,    '1.5.6'  # specific version
#gem 'gemname'  # ,  '>=2.0'
gem 'deep_merge', git: 'git://github.com/peritor/deep_merge.git'
#gem 'radavis_last_fm', path: ~/Dropbox/launch/echo/last_fm'

gem 'sqlite3'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :test, :development do
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'launchy'
  gem 'pry-rails', require: false  # tell bundler it is not required
  gem 'quiet_assets'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'valid_attribute'
end

group :test do
  gem 'database_cleaner'
end
 

