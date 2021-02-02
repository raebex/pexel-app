Rails.application.routes.draw do
  namespace :api do
    get "/photos" => "photos#index"
  end
end
