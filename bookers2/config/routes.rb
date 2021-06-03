Rails.application.routes.draw do
  get 'users/new'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  devise_for :users
 root to: 'homes#index'

  resources :books
  resources :homes
  resources :users
  resources :post_image, only: [:new, :create, :index, :show, :destroy]
  get "/homes/show" => "homes#show"
end
