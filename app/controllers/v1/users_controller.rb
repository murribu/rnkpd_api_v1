class V1::UsersController < V1::V1Controller
  
  def index
    render :json => User.all
  end
  
  def create
    render :json => {'api_v1'}, User.create!(params[:user])
  end
end