Rails.application.routes.draw do
  get 'dashboard/uploaded_products'

  get 'dashboard/my_products'

  resources :users
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  get 'users/new'
  get 'users/create'
  resources :products
  root "products#index"
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'signup', to: 'users#new', as: 'signup'
  get 'uploaded_products', to: 'dashboard#uploaded_products'
  get 'my_products', to: 'dashboard#my_products'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
