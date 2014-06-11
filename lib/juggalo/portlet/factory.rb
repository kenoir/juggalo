require 'juggalo/portlet'
require 'juggalo/portlet/loader/http'

module Juggalo
  class Portlet::Factory
    def self.create(c)
      adapter = Portlet::Loader::HTTP.new
      loader  = Portlet::Loader.new(adapter)

      Juggalo::Portlet.new(c, loader)
    end
  end
end

