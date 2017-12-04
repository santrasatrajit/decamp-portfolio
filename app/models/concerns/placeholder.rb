# this is a module used in multiple models.

module Placeholder
  # ActiveSupport has many helper modules...
  extend ActiveSupport::Concern 

  def self.image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end
end