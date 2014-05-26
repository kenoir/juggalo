require 'juggalo/page'
require 'juggalo/portlet'

module Juggalo
  class Page::Loader
    class Base
      def components; raise NotImplementedError; end
    end
  end
end


