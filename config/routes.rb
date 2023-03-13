Rails.application.routes.draw do
  devise_for :users
  
  resources :chatrooms do
    resource :chatroom_users
    resources :messages
  end
  
  delete '/chatrooms/:id' => 'chatrooms#destroy', as: "destroy_chatroom"
  root "chatrooms#index" 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
end
