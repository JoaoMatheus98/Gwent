Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  # Factions routes
  get '/factions', to: 'factions#index'
  get '/faction/:id', to: 'factions#show'

  # Combat_rows routes
  get '/combat_rows', to: 'combat_rows#index'

  # Cards routes
  get '/cards', to: 'cards#index'

  # Npcs routes
  get '/npcs', to: 'npcs#index'
  get '/npc/:id', to: 'npcs#show'
  post '/npc/filter', to: 'npcs#filter_by_citys'
end
