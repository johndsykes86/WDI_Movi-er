Rails.application.routes.draw do

  root 'users#index'

  #User creation routes routes
  get '/signup' => 'users#new', as: :signup
  post '/signup' => 'users#create'
  get '/profile/' => 'users#show', as: :profile
  get '/settings/:id' => 'users#edit', as: :settings
  put '/settings/:id' => 'users#update'


#session creation routes (login/logout)
  get '/signin' => 'sessions#new', as: :signin
  post '/signin' => 'sessions#create'
  delete '/logout/' => 'sessions#destroy', as: :logout

#Movie routes
  get '/movies' => 'movies#index', as: :movies
  get '/movie/new' => 'movies#new', as: :new_movie
  post '/movies' => 'movies#create'
  get '/movie/:id' => 'movies#show', as: :movie





    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
