# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Player.destroy_all
Match.destroy_all

players = Player.create([
{name: "player 1"},
{name: "player 2"},
{name: "player 3"}
])

matches = Match.create([
	{winner_faction: "Terran", loser_faction: "Zerg", duration: 200000, date: Date.today, winner_id: players[0].id, loser_id: players[1].id},
	{winner_faction: "Zerg", loser_faction: "Protoss", duration: 200000, date: Date.today, winner_id: players[2].id, loser_id: players[0].id},
	{winner_faction: "Protoss", loser_faction: "Terran", duration: 200000, date: Date.today, winner_id: players[2].id, loser_id: players[0].id}
])
