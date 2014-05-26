require 'yaml'
require 'juggalo/page'
require 'juggalo/page/loader/base'

module Juggalo
  class Page::Loader
    class YAML < Base
      def initialize(location)
        @location = location
      end

      def components
        page_hash["components"].map { |c| Juggalo::Portlet.new(c) }
      end

      private

      def page_hash
        ::YAML::load(File.open(@location))
      end
    end
  end
end
