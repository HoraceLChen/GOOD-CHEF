Rails.application.routes.draw do
  devise_for :users
  # root to: "/"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :offers, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:create]
    resources :reviews, only: [:create]
  end
  resources :bookings, only: [:index, :update]
  # Defines the root path route ("/")
  # root "articles#index"
  root "offers#index"

  get 'next_offers', to: 'offers#next_offers'
end
