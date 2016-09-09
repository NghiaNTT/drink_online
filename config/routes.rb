Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home"
  get "home" => "static_pages#home"
  get "about"   => "static_pages#about"
  get "contact" => "static_pages#contact"

  resources :users, only: [:show, :index]
  resources :products, only: [:show, :index]
  resources :categories, only: [:show, :index]
  resources :reviews

  namespace :admin do
    resources :categories
  end
end
