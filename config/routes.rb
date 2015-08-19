Rails.application.routes.draw do
  
  devise_for :users
  resources :posts
  resources :contacts do
    resources :jobs
  end
  resources :companies do
    resources :jobs
  end
  resources :jobs
  
  root "posts#index"
  
  get '/about', to: 'pages#about'
  
end
