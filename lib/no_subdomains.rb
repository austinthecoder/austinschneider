module NoSubdomains

  extend ActiveSupport::Concern

  included do
    before_filter :ensure_no_subdomains
  end

  module InstanceMethods
    private

    def ensure_no_subdomains
      if request.subdomains.present?
        redirect_to root_url(:host => request.domain, :port => request.port)
      end
    end
  end

end