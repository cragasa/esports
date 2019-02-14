# frozen_string_literal: true

Rails.application.routes.draw do
  resources :teams, only: %i[index show]

  root to: 'teams#index'
end
