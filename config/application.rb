require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_mailbox/engine'
require 'action_text/engine'
require 'action_view/railtie'
# require "action_cable/engine"
require 'sprockets/railtie'
require 'rails/test_unit/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PandemicEbt
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.hosts << ENV['APTIBLE_ENDPOINT'] if ENV['APTIBLE_ENDPOINT']
    config.hosts << ENV['EXTERNAL_ENDPOINT'] if ENV['EXTERNAL_ENDPOINT']

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Configure generators:
    config.generators do |g|
      g.assets false
      g.factory_bot false
      g.helper false
      g.jbuilder false
      g.fixtures false
    end

    # Sentry
    if ENV['SENTRY_DSN'].present?
      Raven.configure do |config|
        config.dsn = ENV['SENTRY_DSN']
      end
    end

    config.i18n.fallbacks = [:en]

    config.action_dispatch.default_headers = {
      'X-Frame-Options' => 'DENY'
    }
    config.skylight.environments += %w[staging demo]

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '/assets/*', methods: :get, headers: :any
      end
    end
  end
end
