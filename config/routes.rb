# frozen_string_literal: true

Rails.application.routes.draw do
  get 'players/index'
  get 'players/show'
  resources :teams, only: %i[index show]
  resources :coaches, only: %i[index show]

  root to: 'teams#index'
end
