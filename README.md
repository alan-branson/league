# README for LEAGUE

This README documents the steps necessary to get this
application up and running.

From Gemfile    replace with:

    source 'https://rubygems.org'
    git_source(:github) { |repo| "https://github.com/#{repo}.git" }

    ruby '3.0.2'

    gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
    gem 'puma', '~> 5.0'
    gem 'sass-rails', '>= 6'
    gem 'webpacker', '~> 5.0'
    gem 'turbolinks', '~> 5'
    gem 'jbuilder', '~> 2.7'
    gem 'bootsnap', '>= 1.4.4', require: false

    group :development, :test do
    gem 'sqlite3', '~> 1.4'
    gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
    end

    group :development do
    gem 'web-console', '>= 4.1.0'
    gem 'listen',                 '~> 3.7'
    gem 'spring',                 '~> 2.0'
    gem 'spring-watcher-listen', '~> 2.0', '>= 2.0.1'
    gem 'rack-mini-profiler', '~> 2.0'
    end

    group :test do
    gem 'capybara', '>= 3.26'
    gem 'selenium-webdriver'
    gem 'webdrivers'
    gem 'rails-controller-testing', '~> 1.0', '>= 1.0.5'
    gem 'minitest', '~> 5.14', '>= 5.14.4'
    gem 'minitest-reporters', '~> 1.4', '>= 1.4.3'
    gem 'guard', '~> 2.18'
    gem 'guard-minitest', '~> 2.4', '>= 2.4.6'
    end

    group :production do
    gem 'pg', '1.1.4'
    end

    gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

    gem 'hirb', '~> 0.7.3'

From the terminal:      make sure you are in the league directory

    bundle install --without production

    git init

    git add -A

    git commit -m "Initial commit"

    git remote add origin https://github.com/alan-branson/league.git
    
    git branch -M main

    git push -u origin main

From league/app/controllers/application_controller.rb     add to the ApplicationController class:

    def hello
        render html: 'This is the league App'
    end

From league/config/routes.rb  add the following:

    root 'application#hello'

From the terminal:

    git add -A

    git commit -m "Added Hello method Updated README"

    git push

    heroku login

    heroku create

    git push heroku main