Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :dish, only: [:show]
  resources :dish_ingredients, only: [:create]
  resources :chef, only: [:show] do
    resources :ingredients, only: [:index]
  end
  
end
