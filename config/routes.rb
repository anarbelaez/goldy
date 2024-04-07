Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'

  resources :products, only: %i[index show]
end
