Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :sessions

  get 'signup', to: 'users#new', as: 'signup'
  # post 'register', to: 'users#create', as: 'register'
  post 'login', to: 'sessions#login', as: 'login'
end
