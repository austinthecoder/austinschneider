class ApplicationController < ActionController::Base

  include NoSubdomains

  protect_from_forgery

  before_filter :set_pages

  def set_pages
    @pages = Page.all
  end

end
