Rails.application.routes.draw do

  devise_for :users
  root "restaurants#index"

  resources :products
  resources :restaurants  

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
