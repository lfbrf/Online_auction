Rails.application.routes.draw do
  resources :contacts
  root to: 'home#index'
  devise_for :users
  resources :users
  resources :auctions
  resources :products
  resources :auction_products
  resources :visitors
 
  authenticate :admin do
    namespace :admins do
      root to: 'dashboard#index'
      get '/about', to: 'dashboard#about'
    end
  end
end
