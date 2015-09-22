Rails.application.routes.draw do
  
  namespace :api do
  	get ("/matches/:faction") => "matches#get_faction_matches"
  	get ("/players/:id/matches/performance") => "matches#performance" 
    resources :players do 
    	resources :matches 
    end
  end
end
