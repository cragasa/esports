# frozen_string_literal: true

Rails.application.routes.draw do
  get 'coaches/index'
  get 'coaches/show'
  resources :teams, only: %i[index show]

  root to: 'teams#index'
end
