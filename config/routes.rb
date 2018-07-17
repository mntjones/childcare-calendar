Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do 
    resources :jobs
  end

  resources :sitters do
    resources :jobs
  end
  

  get "/users_login", to: "sessions#user_new"
  post "/users_login", to: "sessions#user_create"
  get "/users_logout", to: "sessions#user_destroy"

 	get "/sitters_login", to: "sessions#sitter_new"
  post "/sitters_login", to: "sessions#sitter_create"
  get "/sitters_logout", to: "sessions#sitter_destroy"
  root to: "application#home"
end
