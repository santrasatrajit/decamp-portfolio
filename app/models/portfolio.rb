class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_img, :thumb_img

  def self.angular
    where(:subtitle=>"Angular")
  end

  scope :ruby_on_rails_portfolio_items, -> {where(:subtitle=>"Ruby on Rails")} 

  after_initialize :set_defaults #this is the callback...this acts between new and create.

  def set_defaults
     self.main_img ||= "http://placehold.it/600x400"
     self.thumb_img ||= "http://placehold.it/350x200"
  end
  # these pipes are conditionals. If the main_img is nil, then set main image to that. If
  # it is not, keep that provided by the user during the form fill up. 
end
