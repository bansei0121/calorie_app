Rails.application.routes.draw do
  get 'sessions/new'
  root 'pages#index'
  
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  resources :calculation do
    collection do
      post :search
    end
  end
end
