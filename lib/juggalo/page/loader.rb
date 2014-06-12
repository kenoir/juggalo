require 'juggalo/page'
require 'juggalo/page/loader/yaml'

module Juggalo
  class Page::Loader
    attr_reader :adapter

    def initialize(adapter)
      @adapter = adapter
    end

    def load
      {
        :page       => @adapter.page,
        :components => @adapter.components
      }
    end
  end
end

