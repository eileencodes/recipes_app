Rails.application.routes.draw do
  resources :cakes
  resources :lunches
  resources :dinners
  resources :ingredients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
