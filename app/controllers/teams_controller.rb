# frozen_string_literal: true

class TeamsController < ApplicationController
  def index
    @teams = Team.order(:name).page(params[:page]).per(10)
  end

  def show
    @team = Team.includes(:players, :coaches).find(params[:id])
  end
end
