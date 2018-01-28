Rails.application.routes.draw do
  
  get 'question_controller/index'

  resources :advertisements

  resources :posts

  post 'users/confirm/' => 'users#confirm/'
  
  root "welcome#index"
  
   get 'about' => 'welcome#about'
   
   get "welcome/contact"
   
   get "welcome/faq"

end