Rails.application.routes.draw do
  # root to: "/"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :offers, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:index, :update, :create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
  root "offers#index"
end
