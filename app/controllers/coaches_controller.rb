# frozen_string_literal: true

class CoachesController < ApplicationController
  def index
    @coaches = Coach.includes(:team).order(:name)
  end

  def show
    @coach = Coach.includes(:team).find(params[:id])
  end
end
