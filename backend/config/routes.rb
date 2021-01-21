Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :users
  resources :reviews
  resources :reservations
  get '/get_user', to: "users#get_user"
  post "/login", to: "auth#create"
end
