require "juggalo/version"
require "juggalo/page/loader"

module Juggalo
  def self.run(template_location, layout_location)
    loader = Page::Loader::Yaml.new('during.yaml')
    layout = Layout.new('during.yaml')
    page   = Page.new(layout, loader)

    page.compose
  end
end
