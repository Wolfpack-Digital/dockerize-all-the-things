# frozen_string_literal: true

require_relative 'boot'

require 'rails'
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_cable/engine'

Bundler.require(*Rails.groups)

module WolfpackApi
  class Application < Rails::Application
    config.load_defaults 5.2
    config.api_only = true
    config.active_job.queue_adapter = :sidekiq
  end
end
