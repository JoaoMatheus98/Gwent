Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :factions
  get '/factions', to: 'factions#index'
  resources :combat_rows
  get '/combat_rows', to: 'combat_rows#index'
end
