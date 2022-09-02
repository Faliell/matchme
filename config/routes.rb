Rails.application.routes.draw do
  
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/select", to: "pages#select"
  get "/dashboard", to: "pages#dashboard"

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  resources :matches

end
