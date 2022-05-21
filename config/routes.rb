Rails.application.routes.draw do

  get 'users/show'
  get 'users/edit'
  
  resources :post_images, only: [:new, :create, :index, :show, :destroy]

  devise_for :users
  root to: 'homes#top'
  
  resources :users, only: [:show, :edit]

  get 'homes/about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
