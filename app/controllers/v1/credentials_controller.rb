class V1::CredentialsController < V1::V1Controller
  before_action :doorkeeper_authorize!

  def me
    render :json => current_resource_owner
  end

end