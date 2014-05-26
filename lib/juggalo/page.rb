module Juggalo
  class Page
    attr_reader :components, :template

    def initialize(layout, loader)
      @layout = layout
      @loader = loader
    end

    def compose
      loader.components
    end
  end
end
