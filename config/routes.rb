Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :users, only: [:edit, :show, :update]


  resources :post_images, only: [:new, :index, :show, :create, :destroy]
  get 'homes/about', to: 'homes#about', as: 'about'

end
