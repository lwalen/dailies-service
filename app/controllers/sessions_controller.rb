class SessionsController < Devise::SessionsController
  # after_filter :cors_set_access_control_headers
  # skip_before_action :verify_authenticity_token

  respond_to :json
end