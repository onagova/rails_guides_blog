Rails.application.routes.draw do
  root 'articles#index'

  get '/articles/archived', to: 'articles#index_archived'

  resources :articles do
    resources :comments
  end
end
