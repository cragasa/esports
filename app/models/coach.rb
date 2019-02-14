# frozen_string_literal: true

class Coach < ApplicationRecord
  belongs_to :team
  validates :name, presence: true
end
