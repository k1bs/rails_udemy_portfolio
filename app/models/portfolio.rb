class Portfolio < ApplicationRecord
  has_many :technologies
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.react
    where(subtitle: 'React')
  end

  scope :rails_items, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '300', width: '250')
    self.thumb_image ||= Placeholder.image_generator(height: '50', width: '50')
  end
end
