Rails.application.routes.draw do
  root 'photos#index'

  resources :photos

  devise_for :users
end
