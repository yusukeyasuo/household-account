Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "household#index"
  resources :household
  get "budget" => "budget#index"
  get "asset" => "asset#index"
  get "profit" => "profit#index"
end
