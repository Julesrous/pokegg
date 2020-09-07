Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'pages#home'

  resources :poke_eggs do
    resources :purchases, only: [:new, :create]
  end
  resources :users
  resources :purchases, only: [:show, :destroy]

end
