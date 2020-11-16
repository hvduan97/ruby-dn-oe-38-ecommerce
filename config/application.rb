require_relative "boot"

require "rails/all"

module RubyDnOe38Ecommerce
  class Application < Rails::Application
    Bundler.require(*Rails.groups)
    config.load_defaults 6.0
    config.time_zone = Settings.time_zone
    config.i18n.load_path += Dir[Rails.root.join("config", "locales", "**", "*.{rb,yml}")]
    config.i18n.available_locales = [:en, :vi]
    config.i18n.default_locale = :vi
  end
end
