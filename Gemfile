source "https://rubygems.org"

gem "rails", "~> 8.0.3"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tailwindcss-rails"

gem "tzinfo-data", platforms: %i[ windows jruby ]

gem "bootsnap", require: false
gem "image_processing", "~> 1.2"
gem "pagy"

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem "faker"
  gem "rspec-rails", "~> 6.1"
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
