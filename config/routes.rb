Rails.application.routes.draw do
  resources :users, only: [:edit, :show]

  resources :post_images, only: [:new, :index, :show, :create, :destroy]
  devise_for :users
  root to: "homes#top"
  get 'homes/about', to: 'homes#about', as: 'about'


end
