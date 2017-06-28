Rails.application.routes.draw do

  root "movies#index"

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
  post '/movies/' => 'movies#create'
  get '/movies/:id' => 'movies#show', as: :movie

#Review routes
  get '/movies/:id/new_review' => 'reviews#new', as: :new_review
  post '/movies/:id/new_review' => 'reviews#create'
  get '/movies/edit_review/:id' => 'reviews#edit', as: :edit_review
  patch '/movies/edit_review/:id' => 'reviews#update'
  delete '/movies/delete_review/:id' => 'reviews#destroy', as: :delete_review








    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
