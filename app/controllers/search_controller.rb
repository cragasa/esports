# frozen_string_literal: true

class SearchController < ApplicationController
  def results
    @query = params[:q]
    @teams = Team.where('name LIKE ?', "%#{@query}%")
    @players = Player.where('name LIKE ?', "%#{@query}%")
    @coaches = Coach.where('name LIKE ?', "%#{@query}%")
  end
end
