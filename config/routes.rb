Rails.application.routes.draw do
  
  resources :users
  resources :courses
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'courses/new', to: 'courses#new'
end
