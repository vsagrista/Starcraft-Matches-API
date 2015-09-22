class Api::MatchesController < ApplicationController
  def index
matches = Match.all 
render json: matches
  end
  def create
  	
  end
  def destroy
  	
  end
end