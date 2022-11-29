Rails.application.routes.draw do
  resources :orders
  resources :carts
  devise_for :users
  resources :user, only: [:show] do 
    resources :avatars, only: [:create]
  end
  resources :items
  resources :join_table_cart_items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "items#index"
end
