Postsecret::Application.routes.draw do
  devise_for :users
  resources :landings, only: [:index]

  root :to => 'landings#index'

end
