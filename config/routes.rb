Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
      resources :houses
      resources :complex_buildings
      resources :commercial_units
      root to: "houses#index"
    end
  get 'pages/home'

  resources :orders, only: %i(new create)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
