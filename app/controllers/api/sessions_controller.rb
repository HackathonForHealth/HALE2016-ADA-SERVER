class Api::SessionsController < Api::ApiController
  def create
    user = User.find_by_email(params[:email])
    
    if !user.blank? && user.valid_password?(params[:password])
      render json: {status: 200, user_id: user.id, authentication_token: user.authentication_token}.to_json
    else
      render json: {status: 400, message: "Invalid credentials"}.to_json
    end
  end
end
