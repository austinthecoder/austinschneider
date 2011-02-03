class ApplicationController < ActionController::Base

  protect_from_forgery

  before_filter :set_pages

  def set_pages
    date = Date.parse("2011/02/02")
    @pages = [
      Page.new(:path => '/', :modified_at => date),
      Page.new(:path => '/projects', :modified_at => date),
      Page.new(:path => '/contact-me', :modified_at => date),
      Page.new(:path => '/on-the-web', :modified_at => date)
    ]
  end

end
