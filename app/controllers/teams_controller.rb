# frozen_string_literal: true

class TeamsController < ApplicationController
  def index
    @teams = Team.order(:name)
  end

  def show
    @team = Team.includes(:players, :coaches).find(params[:id])
    # @team = Team.find(21)
  end
end
