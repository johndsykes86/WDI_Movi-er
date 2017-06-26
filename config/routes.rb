Rails.application.routes.draw do


  root 'users#index'
  get '/profile' => 'users@show' as: :profile
  get '/signup' => 'users#new', as: :signup
  post '/signup' => 'users#create'
  get '/settings' => 'users#edit' as: :settings
  post '/settings' => 'users#update'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
