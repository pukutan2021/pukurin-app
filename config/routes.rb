Rails.application.routes.draw do
  devise_for :users
  get 'cards/index'
  root to: "cards#index"
  resources :users, only: [:edit, :update]
end
