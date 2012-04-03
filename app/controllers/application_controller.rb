class ApplicationController < ActionController::Base

  before_filter :ensure_no_subdomains

  protect_from_forgery

private

  def ensure_no_subdomains
    if request.subdomains.present? && request.domain == 'austinschneider.com'
      redirect_to root_url(:host => request.domain, :port => request.port)
    end
  end

end
