Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  # Faction routes
  get '/factions', to: 'factions#index'
  get '/factions/:id', to: 'factions#show'

  # Combat_rows routes
  get '/combat_rows', to: 'combat_rows#index'
end
