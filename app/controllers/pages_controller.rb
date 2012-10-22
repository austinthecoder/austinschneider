class PagesController < ApplicationController

  caches_page :home

  def error
    raise StandardError, "Ahhh! You found me!"
  end

end