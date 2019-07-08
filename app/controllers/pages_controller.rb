class PagesController < ApplicationController

  def error
    raise StandardError, "Ahhh! You found me!"
  end

end
