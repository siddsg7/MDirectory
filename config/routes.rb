Rails.application.routes.draw do

  resources :posts
  resources :doctors
  root to: 'visitors#index'
  devise_for :users
  resources :users

  get '/listings' => "posts#index"

end
