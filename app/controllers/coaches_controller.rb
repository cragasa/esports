# frozen_string_literal: true

class CoachesController < ApplicationController
  def index
    @coaches = Coach.order(:name)
  end

  def show
    @coach = Coach.find(params[:id])
  end
end
