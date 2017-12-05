class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, 
                                reject_if: lambda {|attrs| attrs['name'].blank?}

  include Placeholder
  validates_presence_of :title, :body, :main_img, :thumb_img

  def self.angular
    where(:subtitle => "Angular")
  end

  scope :ruby_on_rails_portfolio_items, -> {where(:subtitle=>"Ruby on Rails")} 

  after_initialize :set_defaults #this is the callback...this acts between new and create.

  def set_defaults
     self.main_img ||= Placeholder.image_generator(height:"600", width:"400")
     self.thumb_img ||= Placeholder.image_generator(height:"350", width:"200")
  end
  # these pipes are conditionals. If the main_img is nil, then set main image to that. If
  # it is not, keep that provided by the user during the form fill up. 
end
