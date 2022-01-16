Rails.application.routes.draw do
  root to: 'sessions#welcome'

  get '/signup', to: 'users#new', :as => :new_user
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users
  resources :programs
  resources :organizations
  resources :categories, only: [:show, :index]

  resources :organizations do 
    resources :programs
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
