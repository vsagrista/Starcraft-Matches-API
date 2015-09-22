Rails.application.routes.draw do
  namespace :api do
    resources :players do 
    	resources :matches 
    end
  end
end
