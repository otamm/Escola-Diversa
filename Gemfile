source 'https://rubygems.org'

ruby '2.1.5'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 2.5.3'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'faker', '1.4.2'

gem 'will_paginate',           '3.0.7' #pagination
gem 'bootstrap-will_paginate', '0.0.10'#basic pagination styling

gem 'carrierwave',             '0.10.0' # image uploading
gem 'mini_magick',             '3.8.0' # image resizing
gem 'fog',                     '1.23.0' # image upload in production

# Use jquery as the JavaScript library
gem 'jquery-rails', '>= 4.0.0'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '2.3.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.2.3'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'
#enable attr_accessible method
gem 'protected_attributes'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # sqlite database
  gem 'sqlite3',     '1.3.9'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring',      '1.1.3'
end

group :test do
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace',     '0.1.3'
  gem 'guard-minitest',     '2.3.1'
end

group :production do
  #use Postgresql database while in production mode.
  #the pg gem is giving a lot of problems to Yosemite users. Run 'pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start' to start the pg server (http://foobartel.com/2014/10/yosemite-upgrade-postgresql/)
  # to manipulate databases in heroku in production mode, use 'heroku run <rake command>'. Ex: heroku run rake db:migrate
  gem 'pg',             '0.17.1'

  gem 'rails_12factor', '0.0.2'
  # Unicorn is a server (such as WEBrick), only more potent and capable of running a bigger app without major problems on a platform such as Heroku.
  gem 'unicorn',           '4.8.3'
end