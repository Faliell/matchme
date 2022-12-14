Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/select", to: "pages#select"
  get "/dashboard", to: "pages#dashboard"
  get "/profile", to: "pages#profile"

  get "/female", to: "matches#female"
  get "/male", to: "matches#male"


  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  resources :matches do
    member do
      patch :block_female
      patch :block_male
    end
  end

  resources :notifications do
    collection do
      get :mark_all_read
    end
  end
end
