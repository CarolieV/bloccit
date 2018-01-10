Rails.application.routes.draw do
  
  get 'advertisements/index'

  get 'advertisements/show'

  get 'advertisements/new'

  get 'advertisements/create'
  

  resources :questions

  resources :advertisements
  
  resources :topics do
     resources :posts, except: [:index]
   end

   get 'about' => 'welcome#about'
   
     root "welcome#index"
   
   get "welcome/contact"
   
   get "welcome/faq"

end