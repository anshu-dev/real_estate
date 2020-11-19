Rails.application.routes.draw do
  root to: 'home#index'
  get "/dashboard" => 'dashboard#index', as: :dashboard
  get 'dashboard/properties'
  get 'dashboard/reports'
  get '/purchase' => 'home#very_long_task'
  resources :commercial_units
  resources :complex_buildings
  resources :houses
  devise_for :managers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
