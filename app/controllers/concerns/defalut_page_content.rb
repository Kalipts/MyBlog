module DefalutPageContent
  extend ActiveSupport::Concern

  included do
    before_action  :page_title
  end
  def page_title
    @page_title = "Nha Phan | Wisdom begins in wonder."
    @seo_keywords = "Phan Trần Thanh Nhã | phan tran thanh nha"
  end
end
