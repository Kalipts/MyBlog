class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include DeviseWhitelist
  include SetSource
  include CurrentUser

  before_action  :page_title
  def page_title
    @page_title = "Nha Phan | Wisdom begins in wonder."
    @seo_keywords = "Phan Trần Thanh Nhã | phan tran thanh nha"
  end

end
