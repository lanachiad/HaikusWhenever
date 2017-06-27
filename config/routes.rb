Rails.application.routes.draw do
  root 'home#index'

  resources :users, only: [:show, :create, :new, :edit, :delete] do 
    resources :haikus 
  end
end
