Rails.application.routes.draw do
  resources :photos

  get 'profiles/show'
  get '/:id', to: 'profiles#show'

  get 'courses/index'

  root 'photos#index'


  devise_for :users
end
