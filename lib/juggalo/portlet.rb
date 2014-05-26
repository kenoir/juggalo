module Juggalo
  class Portlet
    attr_reader :id, :type, :opts, :location

    def initialize(opts, loader = nil)
      @opts = opts

      @location = opts["location"]
    end

    def render
      "<div>#{opts}</div>"
    end
  end

  class Portlet::Loader
    attr_reader :adapter

    class HTTP; end
  end
end

