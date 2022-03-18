Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :events
  resources :users, only: [:show]

  # Defines the root path route ("/")
  root 'events#index'
end
