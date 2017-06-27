Rails.application.routes.draw do
  root 'home#index'

  get '/users/login', to: 'users#login'
  get '/users/loggingin', to: 'users#loggingin'

  resources :users, only: [:show, :create, :new, :edit, :delete] do 
    resources :haikus 
  end
end
