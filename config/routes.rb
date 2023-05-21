Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index
  root 'restaurants#index'
  get 'restaurants', to: 'restaurants#index'
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/new', to: 'restaurants#new', as: :new
  get 'restaurants/:restaurant_id', to: 'restaurants#show', as: :restaurant
  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_review
  post 'restaurants/:restaurant_id', to: 'reviews#create'
end
