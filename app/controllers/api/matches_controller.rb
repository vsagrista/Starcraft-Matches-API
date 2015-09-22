class Api::MatchesController < ApplicationController

  def index
    matches = Match.all 
    id = params[:player_id].to_i 
    player_matches = []
      matches.each do |match| 
        if match.id == id
          player_matches << match 
          end
        end
    render json: player_matches
  end

  def get_faction_matches 
    matches = Match.all
    faction = params[:faction].capitalize
    matches_with_user_faction = []
    matches.each do |match| 
        if match.winner_faction == faction || match.loser_faction == faction
          matches_with_user_faction << match 
          end
        end
    render json: matches_with_user_faction
  end

  def performance
    player = Player.find_by(id: params[:id])

    

    
    render json: player.calculate_performance(params[:id])

  	
  end
end