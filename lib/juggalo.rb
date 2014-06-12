require 'juggalo/version'
require 'juggalo/page/factory'

module Juggalo
  def self.fetch(id)
    page = Juggalo::Page::Factory.create(id)
    page.render
  end
end

