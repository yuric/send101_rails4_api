source 'https://rubygems.org'
ruby "2.0.0"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'
gem 'rails-api'
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

