module Juggalo
  class Portlet
    attr_reader :id, :type, :opts, :location

    def initialize(opts, loader)
      @opts     = opts
      @loader   = loader
      @location = opts["location"]
    end

    def present
      @loader.load opts
    end
  end
end

