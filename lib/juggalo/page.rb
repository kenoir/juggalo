require 'juggalo/layout'

module Juggalo
  class Page

    def initialize(opts, loader)
      @opts   = opts
      @loader = loader
    end

    def render
      layout.render
    end

    def layout
      @layout ||= Layout.new(page["template"], regions)
    end

    def page
      @page ||= loader[:page]
    end

    def portlets
      @portlets ||= loader[:components]
    end

    def regions
      @regions ||= portlets.reduce({}) do |regions, portlet|
        regions.tap do |r|
          if r[portlet.location].nil?
            r[portlet.location] = [portlet]
          else
            r[portlet.location] << portlet
          end
        end
      end
    end

    private

    def loader
      @load_cache ||= @loader.load
    end

  end
end

