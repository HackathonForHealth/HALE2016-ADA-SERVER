class Api::RegistrationsController < Api::ApiController
    
  def create
    puts "--------------------#{params}-------------"
    @user = User.new(email: params[:email],
             password: params[:password], 
             password_confirmation: params[:password_confirmation])
    
    if @user.save
      render json: {status: 200, user_id: @user.id, authentication_token: @user.authentication_token}.to_json
    else
      render json: {status: 400, message: "Failed to sign user up."}.to_json
    end
  end
    
end
