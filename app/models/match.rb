class Match < ActiveRecord::Base
	belongs_to :winner, class_name: 'Player'
end
