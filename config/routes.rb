Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: :callbacks }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "tweets#index"
  resources :tweets
  resources :likes, only: %i[destroy]
  resources :users, only: %i[show]
  # resources :tweets, path: 'tweet/:id'
end
