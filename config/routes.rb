Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'toppages#root'
  get  'user/signup',  to: 'users#new', as: "signup"
  
  get  'user/login',  to: 'sessions#new', as: "login"
  post  'user/login',  to: 'sessions#create'
  delete  'user/logout',  to: 'sessions#destroy', as: "logout"
  resources :users  do
    member do
      get :following, :followers, :likes
    end
  end
  resources :microposts, only: %w(edit update create destroy) do
    resources :comments, only: %w(new create destroy) 
  end
  resources :relationships, only: %w(create destroy)
  resources :likes, only: %w(create destroy)
end

 
 
