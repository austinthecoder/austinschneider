class PagesController < ApplicationController

  def index
    render :projects
  end

  def sitemap
    # render :layout => false
  end

end