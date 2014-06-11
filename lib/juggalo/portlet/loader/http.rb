require 'juggalo/portlet/loader'

module Juggalo
  class Portlet::Loader
    class HTTP
      def get(foo)
        "<div>#{foo}</div>"
      end
    end
  end
end

