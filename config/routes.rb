Rails.application.routes.draw do
  get 'ownerships/create'

  get 'ownerships/destroy'

  get 'items/new'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'toppages/index'

  root to: 'toppages#index'
  get 'login',to: 'session#new'
  post 'login',to: 'session#create'
  delete 'logout',to: 'session#destroy'
  
  
  get 'signup', to: 'user#new'
  resources :users, only: [:show, :new, :create]
  resources :items, only: [:show,:new]
  resources :ownerships, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
