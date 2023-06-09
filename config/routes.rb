Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    get "/businesses" => "businesses#index"
    post "/businesses" => "businesses#create"
    get "/businesses/:id" => "businesses#show"
    patch "/businesses/:id" => "businesses#update"
    delete "/businesses/:id" => "business#destroy"

    get "/outlets" => "outlets#index"
    post "/outlets" => "outlets#create"
    get "/outlets/:id" => "outlets#show"
    patch "/outlets/:id" => "outlets#update"
    delete "/outlets/:id" => "outlets#destroy"

    get "/positions" => "positions#index"
    post "/positions" => "positions#create"
    get "/positions/:id" => "positions#show"
    patch "/positions/:id" => "positions#update"
    delete "/positions/:id" => "positions#destroy"

    get "/user_types" => "user_types#index"
    post "/user_types" => "user_types#create"
    get "/user_types/:id" => "user_types#show"
    patch "/user_types/:id" => "user_types#update"
    delete "/user_types/:id" => "user_types#destroy"

    get "/eps" => "employee_position_outlets#index"
    post "/eps" => "employee_position_outlets#create"
    get "/eps/:id" => "employee_position_outlets#show"
    patch "/eps/:id" => "employee_position_outlets#update"
    delete "/eps/:id" => "employee_position_outlets#destroy"
    
  end
end
