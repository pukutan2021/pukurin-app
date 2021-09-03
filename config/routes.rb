Rails.application.routes.draw do
  devise_for :users
  root to: "cards#index"
  resources :users, only: [:edit, :update]
  resources :cards, only: [:index, :new, :edit, :create, :update, :destroy]
end
