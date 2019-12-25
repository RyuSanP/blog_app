Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  root 'home#index'

  devise_for :users
  resources :articles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
