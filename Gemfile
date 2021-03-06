source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Frontend gems
gem 'bootstrap', '~> 4.0.0.alpha6' # Bootstrap 4 Ruby Gem for Rails / Sprockets and Compass
gem 'tether-rails', '~> 1.4.0' # Tether for the Rails asset pipeline
gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets
gem 'slim-rails', '~> 3.1.2' # Provides the generator settings required for Rails 3+ to use Slim
gem 'jquery-rails', '~> 4.3.1' # This gem provides jQuery and the jQuery-ujs driver for your Rails 4+ application
gem 'octicons_helper', '~> 3.0.1' # A rails helper that makes including svg Octicons simple.
gem 'pluralize_no_count_if_one', '~> 0.0.1' # Add the missing :no_count_if_one option to the Rails pluralize helper
gem 'unobtrusive_flash', '>= 3' # Turnkey Flash messages for your Rails app
gem 'sparkline', '~> 0.1.0' # jQuery Sparklines for Rails
gem 'jquery-infinite-pages', '~> 0.2.0' # A light-weight infinite scrolling jQuery plugin, wrapped in a gem for Rails

# Backend gems
gem 'rails', '~> 5.1.2'
gem 'pg', '~> 0.21' # Use postgresql as the database for Active Record
gem 'puma', '~> 3.9' # Use Puma as the app server
gem 'interactor', '~> 3.1.0' # Interactor provides a common interface for performing complex user interactions
gem 'sidekiq', '~> 5.0.3' # Simple, efficient background processing for Ruby.
gem 'sidekiq-scheduler', '~> 2.1.7' # Light weight job scheduling extension for Sidekiq that adds support for queueinga jobs in a recurring way.
gem 'sidekiq-unique-jobs', '~> 5.0.8' # The missing unique jobs in sidekiq
gem 'git', '~> 1.3.0' # Ruby/Git is a Ruby library that can be used to create, read and manipulate Git repositories by wrapping system calls to the git binary.
gem 'simple_form', github: 'elsurudo/simple_form', branch: 'rails-5.1.0' # Forms made easy!
gem 'open_uri_redirections', '~> 0.2.1' # OpenURI patch to allow redirections between HTTP and HTTPS
gem 'pres', '~> 1.4.1' # A Simple Rails Presenter
gem 'punching_bag', '~> 0.5.0', github: 'tmartin314/punching_bag', branch: 'rails5'
gem 'groupdate', '~> 3.2.0' # The simplest way to group temporal data
gem 'redcarpet', '~> 3.4.0' # A fast, safe and extensible Markdown to (X)HTML parser
gem 'opbeat', '~> 3.0.9' # performance monitoring
gem 'kaminari', '~> 1.0.1' # sophisticated paginator for Rails
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'turbolinks', '~> 5' # Turbolinks makes navigating your web application faster.
# gem 'redis', '~> 3.0' # Use Redis adapter to run Action Cable in production
# gem 'bcrypt', '~> 3.1.7' # Use ActiveModel has_secure_password

# SEO
gem 'dynamic_sitemaps', '~> 2.0.0' # Dynamic sitemap generation plugin for Ruby on Rails.
gem 'metamagic', '~> 3.1.7' # Simple Ruby on Rails plugin for creating meta tags.

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rspec-rails', '~> 3.6.0'
  gem 'cucumber-rails', '~> 1.5.0', require: false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner', '~> 1.6.1'
  gem 'coveralls', '~> 0.8.15', require: false
  gem 'webmock', '~> 3.0.1'
  gem 'cucumber-timecop', '~> 0.0.6', require: false
  gem 'capybara-screenshot', '~> 1.0.14'
  gem 'shoulda-matchers', '~> 3.1.1'
  gem 'ffaker', '~> 2.6.0'
end
