module Juggalo
  class Portlet
    attr_reader :id, :opts

    def initialize(opts, loader)
      @opts     = opts
      @loader   = loader
    end

    def location
      opts["page_location"]
    end

    def present
      @loader.load opts
    end
  end
end

