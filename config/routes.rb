# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'users#index'
  get 'articles', to: 'articles#index'
  get 'articles', to: 'articles#index'
  get 'login', to: 'pages#login'
  get 'about-us', to: 'pages#about'
end
