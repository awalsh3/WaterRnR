Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
    resources :users do
      collection do
        get "dashboard"
      end
    end
    resources :pools, only: [ :new, :create, :index, :show ] do
      resources :bookings, only: [ :new, :create, :show ] do
        resources :reviews, only: [:new, :create]
      end
    end
end
