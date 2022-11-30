Rails.application.routes.draw do
  
  namespace :admin do
      resources :users
      resources :carts
      resources :items
      resources :join_table_cart_items
      resources :join_table_order_items
      resources :orders

      root to: "users#index"
    end

  resources :orders


  resources :carts
  resources :join_table_cart_items

  devise_for :users
  resources :user, only: [:show]

  resources :items

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "items#index"
  
end
