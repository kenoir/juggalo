require 'juggalo/version'
require 'juggalo/page'
require 'juggalo/layout'
require 'juggalo/page/loader'

module Juggalo
  def self.run(template_location, layout_location)
    adapter = Page::Loader::YAML.new layout_location
    loader  = Page::Loader.new(adapter)
    layout  = Layout.new template_location
    page    = Page.new(layout, loader)

    page.compile
  end
end

