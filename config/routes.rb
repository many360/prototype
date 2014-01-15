Prototype::Application.routes.draw do
  resources :locations

  root  'static_pages#home'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :messages, only: [:index, :new, :create]
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match 'runkeeper/authorize', to: 'runkeeper#authorize', via: 'get'
  match 'runkeeper/deauthorize', to: 'runkeeper#deauthorize', via: 'get'
end
