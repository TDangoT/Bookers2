Rails.application.routes.draw do
  devise_for :users
 root to: 'homes#index'

  resources :books
  resources :homes
  resources :users
  get "/homes/show" => "homes#show"
end
