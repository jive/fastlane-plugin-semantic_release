require 'fastlane/plugin/semantic_release2/version'

module Fastlane
  module SemanticRelease2
    # Return all .rb files inside the "actions" and "helper" directory
    def self.all_classes
      Dir[File.expand_path('**/{actions,helper}/*.rb', File.dirname(__FILE__))]
    end
  end
end

# By default we want to import all available actions and helpers
# A plugin can contain any number of actions and plugins
Fastlane::SemanticRelease2.all_classes.each do |current|
  require current
end
