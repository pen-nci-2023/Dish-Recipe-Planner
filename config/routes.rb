Rails.application.routes.draw do
  resources :dishes
  resources :ingredients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root 'home#index'
end
