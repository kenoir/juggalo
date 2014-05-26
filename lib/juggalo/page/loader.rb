require 'yaml'

module Juggalo
  class Page::Loader
    attr_reader :adapter

    class Base
      def components; raise NotImplementedError; end
    end

    class YAML < Base
      attr_reader :location

      def initialize(location)
        @location = location
      end

      def components
        page_hash["components"].map { |c| Juggalo::Portlet.new(c) }
      end

      private

      def page_hash
        ::YAML::load(File.open(location))
      end

    end

    class HTTP; end

  end
end


