class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  mount_base64_uploader :avatar, AvatarUploader
  # Uses simple_token_authentication gem to allow users to be authenticated through a token.
  # This is used at the API.
  acts_as_token_authenticatable
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
