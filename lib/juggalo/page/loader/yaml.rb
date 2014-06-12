require 'yaml'
require 'juggalo/portlet'
require 'juggalo/page'
require 'juggalo/page/loader/base'

module Juggalo
  class Page::Loader
    class YAML < Base
      def initialize(location)
        @location = location
      end

      def page
        page_hash["page"]
      end

      def components
        page_hash["components"].map { |c| create_component_from c }
      end

      private

      def page_hash
        ::YAML::load(File.open(@location))
      end
    end
  end
end

