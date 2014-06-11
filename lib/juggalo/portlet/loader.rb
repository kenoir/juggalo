require 'juggalo/portlet'
require 'juggalo/portlet/loader/http'

module Juggalo
  class Portlet::Loader
    attr_reader :adapter

    def initialize(adapter)
      @adapter = adapter
    end

    def load(opts)
      @adapter.get opts
    end
  end
end

