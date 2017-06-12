Rails.application.routes.draw do
  get 'articles/index'

  devise_for :users
  get 'user/index'
  root 'user#index'
  resources :users
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
