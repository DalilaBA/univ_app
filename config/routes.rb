Rails.application.routes.draw do
  
  resources :courses
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'courses/index', to:'courses#index'
  get 'courses/new', to: 'courses#new'
end
