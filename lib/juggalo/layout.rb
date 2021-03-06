require 'mustache'

module Juggalo
  class Layout < Mustache
    attr_reader :regions

    def initialize(template_location, regions)
      @regions = regions
      self.template_file = template_location
    end

    def method_missing(name, *args, &block)
      return super unless respond_to? name.to_s
      region @regions[name.to_s]
    end

    def respond_to?(method)
      valid_regions.include? method.to_s
    end

    def region(components)
      components.map { |c| c.present }.join unless components.nil?
    end

    def valid_regions
      self.template.tokens.find_all { |token|
        token.is_a?(Array) && token[0] == :mustache
      }.map{ |token|
        token[2][2][0].to_s
      }
    end
  end
end

