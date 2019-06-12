Rails.application.routes.draw do
  root 'welcome#home'

  get '/mystory', to: 'welcome#story'
  resources :articles, only: [:index]
end
