Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  get "home/index" => "home#index"
  get "home/show/:id" => "home#show"
  get "household" => "household#index"
  get "budget" => "budget#index"
end
