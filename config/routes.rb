Rails.application.routes.draw do
  resources :contacts
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :auctions
  resources :products
  resources :auction_products
end
