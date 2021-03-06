Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bookings, only: [ :update, :index ]

  resources :items do
    resources :bookings, only: [ :new, :create ]
  end

  get "profile/:id", to: "profiles#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
