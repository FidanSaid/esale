require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Esale
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

     config.consider_all_requests_local       = true
     # config.active_record.raise_in_transactional_callbacks = true
  end
end
