Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # DON'T !
  resources :users do
    resources :appartments
  end

  # DO
  resources :appartments
end
