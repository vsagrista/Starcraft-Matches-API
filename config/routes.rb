Rails.application.routes.draw do
  
  namespace :api do
  	get ("/matches/:faction") => "matches#get_faction_matches"
  	#resources :matches 
    resources :players do 
    	resources :matches 
    end
  end
end
