# frozen_string_literal: true

class PlayersController < ApplicationController
  def index
    @players = Player.includes(:team).order(:name).page(params[:page])
  end

  def show
    @player = Player.includes(:team).find(params[:id])
  end
end
