Rails.application.routes.draw do
  get 'index', to: 'main#index'
  get '/cities/view'
  get '/cities/new'
  get '/cities/update', to: 'cities#update'
  post '/cities/create'
  post '/cities/updatep', to: 'cities#updatep'


end

