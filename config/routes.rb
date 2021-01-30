require 'sidekiq/web'

Rails.application.routes.draw do

  resources :politicians
  resources :donations

  namespace :admin do
    resources :users
    resources :announcements
    resources :notifications
    resources :services
    root to: "users#index"
  end

  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'

  get '/paymentthankyou', to: 'home#paymentthankyou'
  get '/paymentcanceled', to: 'home#paymentcanceled'

  scope '/checkout' do
  post 'create', to: 'checkout#create', as: 'checkout_create'
  # post 'create_cart_checkout', to: 'checkout#create_cart_checkout', as: 'checkout_create_cart_checkout_path'
  # get 'paymentcanceled', to: 'checkout#paymentcanceled', as: 'checkout_paymentcanceled'
  # get 'paymentthankyou', to: 'checkout#paymentthankyou', as: 'checkout_paymentthankyou'
end

    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end

  # devise_for :users, controllers: {confirmations: 'users/confirmations'}
  devise_for :users, controllers: { registrations: 'users/registrations', confirmations: 'users/confirmations' }

  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  # devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
