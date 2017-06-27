Rails.application.routes.draw do
  root 'home#index'

  get '/signup', to: 'users#new'
  get '/login', to: 'users#login'
  get 'logout', to: 'users#delete'

  resources :users, only: [:show, :create, :new, :edit, :delete] do 
    resources :haikus 
  end
end
