# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
Rails.application.load_server

Rails.application.config.hosts << "https://127.0.0.1:3000"
