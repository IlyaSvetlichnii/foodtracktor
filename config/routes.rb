Rails.application.routes.draw do

  root "restaurants#index"

  resources :products
  resources :restaurants  

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
