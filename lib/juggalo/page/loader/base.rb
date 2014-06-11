require 'juggalo/page'
require 'juggalo/portlet'
require 'juggalo/portlet/factory'

module Juggalo
  class Page::Loader
    class Base
      def components; raise NotImplementedError; end

      def create_component_from(config)
        Portlet::Factory.create(config)
      end
    end
  end
end

