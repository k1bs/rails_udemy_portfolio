module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_title
  end

  def set_title
    @page_title = 'Udemy Portfolio'
    @seo_keywords = 'Alex Kibler Udemy Ruby Rails Portfolio'
  end
end
