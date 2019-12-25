Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :articles do
    resource :favorites, only: [:create, :destroy]
  end
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
