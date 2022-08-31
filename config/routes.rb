Rails.application.routes.draw do
  delete '/users/sign_out' => 'sessions#destroy', :as => :destroy_user_session_2
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/select", to: "pages#select"

  resources :matches
end
