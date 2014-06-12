require 'juggalo/page'
require 'juggalo/page/loader'
require 'juggalo/page/loader/yaml'
require 'juggalo/page/loader/http'

module Juggalo
  class Page::Factory
    def self.create(c)
      adapter  = Page::Loader::YAML.new 'config/layout/base.yaml'
      loader   = Page::Loader.new(adapter)

      Page.new(c, loader)
    end
  end
end

