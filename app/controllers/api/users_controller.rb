class Api::UsersController < ApplicationController
  
  def show
    @user = User.find_by_email(request.headers['X-User-Email'])
    if @user.blank?
      render json: {status: 400, message: "Could not find user"}.to_json
    end 
  end
  
end
