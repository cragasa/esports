# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :players
  has_many :coaches
  validates :name, presence: true
end
