Rails.application.routes.draw do
  
  get 'user_courses/create'
  resources :users
  resources :courses
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'courses/new', to: 'courses#new'
  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"
  post 'course_enroll', to: 'user_courses#create'
end
