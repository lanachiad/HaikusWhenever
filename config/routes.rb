Rails.application.routes.draw do
  root 'home#index'

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users, only: [:show, :create, :new, :edit, :update, :destroy]
  resources :haikus, except: [:show]
end
