require "juggalo/version"
require "juggalo/page/loader"

module Juggalo
  def self.run(template_location, layout_location)
    loader = Page::Loader::Yaml.new layout_location
    layout = Layout.new template_location
    page   = Page.new(layout, loader)

    page.compose
  end
end
