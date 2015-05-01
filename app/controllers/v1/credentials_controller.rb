class V1::CredentialsController < V1::V1Controller

  def me
    puts "here"
    render :json => current_resource_owner
  end

end