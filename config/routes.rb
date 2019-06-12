Rails.application.routes.draw do
  root 'welcome#home'

  get '/mystory', to: 'welcome#story'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#login'

  resources :articles, only: [:index]

  resources :users, only: [:new, :create]
end
