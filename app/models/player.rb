class Player < ActiveRecord::Base
	def calculate_performance(id)
		wins = 0
		loses = 0
		Match.all.each do |match|
			if match.winner_id == id.to_i
				wins += 1
			end
			if match.loser_id == id.to_i
				loses += 1
			end		
		end
		total = wins + loses
		percentages = { wins: "#{((wins * 100 / total *100)/100)}%", loses: "#{((loses * 100 / total *100)/100)}%"}
		percentages
	end
end
