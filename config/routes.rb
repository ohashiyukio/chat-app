Rails.application.routes.draw do
  devise_for :users
  get 'rooms/index'
  root to: "messages#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end
