Rails.application.routes.draw do
  root 'homes#top'
  get "home/about" =>"homes#about"
  devise_for :users
  resources :users, only: [:show, :edit, :update, :create, :index, :new]
  resources :books, only: [:create, :index, :show, :update, :edit, :destroy ]
end
