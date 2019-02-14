# frozen_string_literal: true

Rails.application.routes.draw do
  resources :pages
  resources :teams, only: %i[index show]
  resources :coaches, only: %i[index show]
  resources :players, only: %i[index show]

  get 'static/:permalink', to: 'pages#static', as: 'static'

  root to: 'teams#index'
end
