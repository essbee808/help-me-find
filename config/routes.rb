Rails.application.routes.draw do
  
  get '/signup', to: 'users#new', :as => :new_user_path
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  root to: 'sessions#welcome'

  resources :users
  resources :programs
  resources :organizations
  resources :categories
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
