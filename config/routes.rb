Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # config/routes.rb

resources :events do
   post 'attend', to: 'attendances#create', on: :member
   delete 'unattend', to: 'attendances#destroy', on: :member
end

    


  delete '/events/:id', to: 'events#destroy'
  
  resources :users,only: [:show]

  devise_for :users
  root to: "events#index"

  
end
