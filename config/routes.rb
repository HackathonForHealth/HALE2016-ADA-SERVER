Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :api, defaults: {format: :json} do
    resources :sessions, only: [:create, :new]
    resources :registrations, only: :create
    
  end
  
end
