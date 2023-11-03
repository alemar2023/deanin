Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/session',
      registrations: 'users/registration',
  confirmations: 'users/confirmations'
  }
  resources :posts
  get 'pages/home'
  get 'pages/about'
  get 'home/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
   root "pages#home"
  get "about" => "pages#about"
  get "posts" => "posts#index"
  get "new_posts" => "posts#new"
end
