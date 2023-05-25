Rails.application.routes.draw do
  get 'accounts/index'
  devise_for :accounts
  get 'home/index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#index"
end
