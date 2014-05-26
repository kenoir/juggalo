module Juggalo
  class Portlet
    attr_reader :id, :type, :opts, :location

    def initialize(opts, loader = nil)
      @opts = opts
    end
  end

  class Portlet::Loader
    attr_reader :adapter

    class HTTP; end
  end
end

