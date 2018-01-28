Rails.application.routes.draw do
  
  get 'question_controller/index'

  resources :advertisements

  resources :posts
  
  resources :questions
  
  resources :topics
  
  resources :sponsoredposts
  
  resources :users, only: [:new, :create]


  post 'users/confirm/' => 'users#confirm/'
  
  root "welcome#index"
  
   get 'about' => 'welcome#about'
   
   get "welcome/contact"
   
   get "welcome/faq"

end