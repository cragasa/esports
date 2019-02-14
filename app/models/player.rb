# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :team
  validates :name, :game_name, :country, presence: true
end
