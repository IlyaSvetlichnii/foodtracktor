Rails.application.routes.draw do

  devise_for :users
  root "restaurants#index"

  resources :products, :baskets
  delete "baskets/delete_all"
  post "products/add"
  
  resources :restaurants  

  resource :cart, only: [:show] do
    put 'add/:product_id', to: 'carts#add', as: :add_to
    put 'remove/:product_id', to: 'carts#remove', as: :remove_from
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
