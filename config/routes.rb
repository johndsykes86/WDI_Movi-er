Rails.application.routes.draw do

  get 'home/index'

  root "movies#index"

  resources :movies do
  resources :reviews
end
  post '/movies/:movie_id/reviews/new' => 'reviews#create', as: :reviews
  patch '/movies/:movie_id/reviews/:id/edit' => 'reviews#update'

  #Signup/Signin Routes
  get '/signin' => 'sessions#new', as: :signin
  post '/signin' => 'sessions#create'
  get '/signup' => 'users#new', as: :signup
  post '/signup' => 'users#create'
  get '/signout' => 'sessions#destroy', as: :logout

# User Profile paths
  get 'user/:id/profile' => 'users#show', as: :profile
  patch 'user/:id/profile' => 'users#update'



#
#   #User creation routes routes
#   get '/signup' => 'users#new', as: :signup
#   post '/signup' => 'users#create'
#   get '/profile/' => 'users#show', as: :profile
#   get '/settings/:id' => 'users#edit', as: :settings
#   put '/settings/:id' => 'users#update'
#
#
# #session creation routes (login/logout)
#   get '/signin' => 'sessions#new', as: :signin
#   post '/signin' => 'sessions#create'
#   delete '/logout/' => 'sessions#destroy', as: :logout
#
# #Movie routes
#   get '/movies' => 'movies#index', as: :movies
#   get '/movie/new' => 'movies#new', as: :new_movie
#   post '/movies/' => 'movies#create'
#   get '/movies/:id' => 'movies#show', as: :movie
#
# #Review routes
# get '/users/:user_id/posts/:id' => 'posts#show'
#   get '/movies/:id/new_review' => 'reviews#new', as: :new_review
#   post '/movies/:id/new_review' => 'reviews#create'
#   get '/movies/:movie_id/review/:id' => 'reviews#edit', as: :edit_review
#   patch '/movies/edit_review/:id' => 'reviews#update'
#   delete '/movies/delete_review/:id' => 'reviews#destroy', as: :delete_review








    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
