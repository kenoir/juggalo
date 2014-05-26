module Juggalo
  class Page
    attr_reader :components, :template

    def initialize(layout, loader)
      @layout = layout
      @loader = loader
    end

    def compile
      @layout.regions = compose
      @layout.render
    end

    private

    def compose
      @components ||= @loader.load
      @regions    ||= @components.reduce({}) do |regions, component|
        regions.tap do |r|
          if r[component.location].nil?
            r[component.location] = [component]
          else
            r[component.location] << component
          end
        end
      end
    end

  end
end

