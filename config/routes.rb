Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/plates" => "plates#index"
    post "plates" => "plates#create"
    get "/plates/:id" => "plates#show"
    patch "/plates/:id" => "plates#update"
    delete "/plates/:id" => "plates#destroy"

    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "users/:id" => "users#destroy"

    get "/orders" => "orders#index"
    post "/orders" => "orders#create"
    get "/orders/:id" => "orders#show"
    patch "/orders/:id" => "orders#update"
    delete "/orders/:id" => "orders#destroy"

    get "/carted_products" => "carted_products#index"
    post "/carted_products" => "carted_products#create"
    get "/carted_products/:id" => "carted_products#show"
    patch "/carted_products/:id" => "carted_products#update"
    delete "/carted_products/:id" => "carted_products#destroy"

  end
end
