source 'https://rubygems.org'
ruby "2.0.0"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'
#User management
gem 'devise'
gem 'omniauth-twitter'
#gem 'omniauth-facebook'

# Use postgresql as the database for Active Record
gem 'pg'
gem 'rails_12factor', group: :production
# Use unicorn as the app server
gem 'unicorn'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Deploy with Capistrano
# gem 'capistrano', :group => :development

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :test do
  gem 'cucumber-rails'
end
group :development, :test do
#  gem 'sqlite3'
  gem 'awesome_print'#, :require => 'ap'
  gem 'rspec-rails'
  gem 'machinist'
  gem 'better_errors'
  gem 'binding_of_caller'
  #gem 'rails-dev-tweaks', '~> 0.5.0'
  #gem 'rack-mini-profiler'
  gem 'bullet'
  gem 'uniform_notifier'
  gem 'ruby-growl'
  #gem 'meta_request'
  #> Bumbler::Stats.all_slow_items  #will show you the gems which load the slowest.
end

