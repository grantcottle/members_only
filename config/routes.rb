# frozen_string_literal: true

Rails.application.routes.draw do
  get 'pages/index'
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
end
