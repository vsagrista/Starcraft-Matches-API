class Api::MatchesController < ApplicationController

  def index
    matches = Match.all 
    id = params[:player_id] 
    player_matches = []
      matches.each do |match| 
        if match.id == id.to_i 
          player_matches << match 
          end
        end
    render json: player_matches
  end

  def show 

  end

  def create
  	
  end

  def destroy
  	
  end
end