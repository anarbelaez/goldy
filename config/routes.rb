# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'

  resources :products, only: %i[index show]
  resources :categories, only: %i[index show]

  resource :cart, only: [:show] do
    delete 'empty'
    post 'checkout'
  end

  resources :cart_products, only: [] do
    collection do
      post :add_item
    end

    member do
      delete :remove_item
      patch :update_item
    end
  end

  resources :orders, shallow: true do
    resources :order_products, only: %i[create update destroy], as: :products
  end

end
