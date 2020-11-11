Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# A visitor can see the list of all restaurants.
# get '/restaurants', to: 'restaurants#index'  #GET "restaurants"

# A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
# get '/restaurants/new', to: 'restaurants#new' # GET "restaurants/new"
# post '/restaurants', to: 'restaurants#create' # POST "restaurants"

# A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
# get '/restaurants/:id', to: 'restaurants#show' # GET "restaurants/38"

# A visitor can add a new review to a restaurant (need to create a review model)
# get '/restaurants/new', to: 'restaurants#new'  # GET "restaurants/38/reviews/new"
# post '/restaurants', to: 'restaurants#create'  # POST "restaurants/38/reviews"

  resources :restaurants
end
