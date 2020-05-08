Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/plates" => "plates#index"
    get "/plates/:id" => "plates#show"

    get "/users" => "users#index"
    get "/users/:id" => "users#show"

    get "/orders" => "orders#index"
    get "/orders/:id" => "orders#show"

    get "/carted_products" => "carted_products#index"
    get "/carted_products/:id" => "carted_products#show"
  end
end
