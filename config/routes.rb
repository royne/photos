Rails.application.routes.draw do
  get 'courses/index'

  root 'photos#index'

  resources :photos

  devise_for :users
end
