Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :clients
  authenticated :user do
    root to: 'home#index', as: :authenticated_root
  end
  root to: redirect('/users/sign_in')
end
