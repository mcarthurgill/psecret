Postsecret::Application.routes.draw do
  devise_for :users
  devise_for :users do get '/users/sign_out' => 'devise/sessions#destroy' end
  resources :landings, only: [:index]

  root :to => 'landings#index'

end
