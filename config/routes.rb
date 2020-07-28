Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'pages/home', to: 'pages#home'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'login', to: 'sessions#destroy'
  get '/signup', to: 'chefs#new'
  resources :ingredients, except: [:destroy]
  resources :recipes
  resources :chefs, except: [:new]
end
