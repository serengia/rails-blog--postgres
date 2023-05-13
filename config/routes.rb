# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root 'users#index'
  # get '/users', to: 'users#index'
  # get "/users/:user_id", to: "users#show"
  # get "/users/:user_id/posts", to: "posts#index"
  # get "/users/:user_id/posts/:post_id", to: "posts#show"
  # get '/login', to: 'pages#login'

  
  # REFACTORED
    resources :users, only: [:index, :show] do
      resources :posts, only: [:index, :show, :new, :create] do
        resources :comments, only: [:new, :create]
        resources :likes, only: [:create]
      end
    end
    get '/login', to: 'pages#login'
    root "users#index"

end
