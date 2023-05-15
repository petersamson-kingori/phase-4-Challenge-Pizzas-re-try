Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show] 
    resources :pizzas, only: [:index, :show]
    resources :restaurant_pizzas, only: [:index, :show, :new, :create, :edit, :update, :destroy]  # Nested route for pizzas
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
