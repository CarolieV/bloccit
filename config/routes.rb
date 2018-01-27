Rails.application.routes.draw do
  
  get 'question_controller/index'

  resources :advertisements

  resources :posts

  root "welcome#index"
  
   get 'about' => 'welcome#about'
   
   get "welcome/contact"
   
   get "welcome/faq"

end