class DashboardController < ActionController::Base
  include Clearance::Controller
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  before_action :doorkeeper_authorize!
  
  def index
    render template: "dashboard/index"
  end
end
