Rails.application.routes.draw do
  
  devise_for :users
  resources :posts
  resources :contacts
  
  root "posts#index"
  
  get '/about', to: 'pages#about'
  
end
