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

  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "items#index"
  
end
