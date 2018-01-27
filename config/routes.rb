Rails.application.routes.draw do
  
<<<<<<< HEAD
  resources :questions
=======
  get 'question_controller/index'

  resources :advertisements

  resources :posts
>>>>>>> cae9a8cc71c2f21f1cb343e1961c5ffab627fbba

  resources :advertisements
  
  resources :topics do
      
  resources :posts, except: [:index]
  
  resources :sponsoredposts
 end

   get 'about' => 'welcome#about'
   
     root "welcome#index"
   
   get "welcome/contact"
   
   get "welcome/faq"

end