require 'fastlane/plugin/get_last_circleci_build_number/version'

module Fastlane
  module GetLastCircleciBuildNumber
    # Return all .rb files inside the "actions" and "helper" directory
    def self.all_classes
      Dir[File.expand_path('**/{actions}/*.rb', File.dirname(__FILE__))]
    end
  end
end

# By default we want to import all available actions and helpers
# A plugin can contain any number of actions and plugins
Fastlane::GetLastCircleciBuildNumber.all_classes.each do |current|
  require current
end
