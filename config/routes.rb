Rails.application.routes.draw do
  get 'sessions/new'
  get 'welcome/index'

  resources :users
  resources :airplanes
  resources :airports
  resources :flights
  resources :payments
  resources :reservations

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'welcome#index'
end
