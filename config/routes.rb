Rails.application.routes.draw do
  devise_for :users
  resources :products do
    resources :requests, only: [:new, :create]
  end

  resources :users, only: [:show, :edit, :update]

  get 'users/:id/requests', to: 'users#requests', as: 'user_requests'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
