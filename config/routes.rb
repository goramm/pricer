Rails.application.routes.draw do

  resources :shops
  root to: 'products#index'

  resources :products
  resources :pages
end
