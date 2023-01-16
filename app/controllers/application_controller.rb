class ApplicationController < ActionController::Base
    # set_current_tenant_through_filter
    set_current_tenant_by_subdomain_or_domain(:account, :subdomain, :domain)
    # before_action :set_tenant

    # before_action do
    #   binding.irb
    # end
    # def set_tenant
    #   set_current_tenant(current_user)
    # end
end
