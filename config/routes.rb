Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/plates" => "plates#index"
    post "plates/create" => "plates#create"
    get "/plates/:id" => "plates#show"
    patch "/plates/:id" => "plates#update"
    delete "/plates/:id" => "plates#destroy"

    get "/users" => "users#index"
    post "/users/create" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "users/:id" => "users#destroy"

    get "/orders" => "orders#index"
    get "/orders/:id" => "orders#show"

    get "/carted_products" => "carted_products#index"
    get "/carted_products/:id" => "carted_products#show"
  end
end
