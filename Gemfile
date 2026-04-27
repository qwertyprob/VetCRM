source "https://rubygems.org"

# =========================
# Core Rails
# =========================
gem "rails", "~> 8.1.3"

# Database
gem "pg", "~> 1.1"

# Web server
gem "puma", ">= 5.0"

# Asset pipeline
gem "propshaft"

# JavaScript / Hotwire
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"

# JSON builder
gem "jbuilder"

# =========================
# API / Serialization
# =========================
gem "active_model_serializers", "~> 0.10.16"

# =========================
# Security / Auth
# =========================
gem "bcrypt", "~> 3.1.7"   # password hashing
gem "jwt"                  # JWT tokens
gem "pundit"               # authorization policies

# =========================
# OTP / MFA
# =========================
gem "rotp"                 # OTP code generation
gem "twilio-ruby"          # SMS sending

# =========================
# OAuth
# =========================
gem "omniauth"
gem "omniauth-google-oauth2"
gem "omniauth-rails_csrf_protection"

# =========================
# CORS
# =========================
gem "rack-cors", "~> 2.0"

# =========================
# Active Storage
# =========================
gem "image_processing", "~> 1.2"

# =========================
# State machine
# =========================
gem "aasm"

# =========================
# Background / Rails infra
# =========================
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# =========================
# Logging
# =========================
gem "lograge"

# =========================
# Performance
# =========================
gem "bootsnap", require: false

# =========================
# Deployment
# =========================
gem "thruster", require: false

# =========================
# Environment variables
# =========================
gem "dotenv-rails", "~> 3.2", groups: [ :development, :test ]

# =========================
# Platform specific
# =========================
gem "tzinfo-data", platforms: %i[windows jruby]

# =========================
# Development + Test
# =========================
group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"

  # Security audit
  gem "bundler-audit", require: false
  gem "brakeman", require: false

  # Linter
  gem "rubocop-rails-omakase", require: false

  # Testing
  gem "rspec-rails", "~> 7.0"
  gem "ruby-lsp-rspec", require: false
  gem "factory_bot_rails"
  gem "faker"

  # API documentation
  gem "rswag-api"
  gem "rswag-ui"
end

# =========================
# Development only
# =========================
group :development do
  gem "web-console"
  gem "rubocop-yard"
end

# =========================
# Test only
# =========================
group :test do
  gem "shoulda-matchers"
end
