# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'bootstrap'
gem 'devise'
gem 'image_processing', '~> 1.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
gem 'sass-rails', '>= 6'
gem 'sidekiq'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'factory_bot_rails'
  gem 'faker'
  %w[
    rspec-core
    rspec-expectations
    rspec-mocks
    rspec-rails
    rspec-support
  ].each do |lib|
    gem lib, git: "https://github.com/rspec/#{lib}.git"
  end
  gem 'rspec-sidekiq'
  gem 'sidekiq-status'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
