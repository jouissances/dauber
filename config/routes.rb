Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "daubs#index"

  # Adds all the CRUD views and routings for daubs
  resources :daubs

end
