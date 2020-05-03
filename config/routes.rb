Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/plates" => "plates#index"
    get "/plates/:id" => "plates#show"

    get "/users" => "users#index"
    get "/users/:id" => "users#show"
  end
end
