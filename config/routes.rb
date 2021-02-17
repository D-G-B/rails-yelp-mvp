Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end




# see all restaurants :         GET "restaurants"       index  .all

# see view of new restaurant    GET "restaurants/new"   new  .new()
# create new rewstaurant        POST "restaurants"      create .new&.save or .create

# details of a restaurant,      GET "restaurants/38"     show .find()
# with all the reviews

# A visitor can add a           GET "restaurants/38/reviews/new" ??
# new review to a restaurant    POST "restaurants/38/reviews"   ??



