Rails.application.routes.draw do
  devise_for :users
  
  resources :chatrooms do
    resource :chatroom_users
    get '/message/:id' => 'messages#destroy', as: "destroy_message"
    resources :messages 
     get '/message/:id' => 'messages#destroy', as: "destroy_message"
    
  end
  
  get '/chatroom/:id' => 'chatrooms#destroy', as: "destroy_chatroom"
  root "chatrooms#index" 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
end
