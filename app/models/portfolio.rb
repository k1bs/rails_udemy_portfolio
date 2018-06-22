class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.react
    where(subtitle: 'React')
  end

  scope :rails_items, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= 'http://placehold.it/300x200'
    self.thumb_image ||= 'http://placehold.it/50x50'
  end
end
