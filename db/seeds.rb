# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create 10 teams
# 10.times do
#   Team.create!(
#     name: Faker::Team.name
#   )
# end

User.create(first_name: "Kunal", last_name: "Patel", email: "kunal@gmail.com", phone: "123-456-7890", password_digest: "password", phone_approval: true)

User.create(first_name: "Amy", last_name: "Plant", email: "amy@gmail.com", phone: "123-456-7890", password_digest: "password", phone_approval: true)

User.create(first_name: "Craig", last_name: "Waterman", email: "craig@gmail.com", phone: "123-456-7890", password_digest: "password", phone_approval: true)

User.create(first_name: "John", last_name: "Linder", email: "john@gmail.com", phone: "123-456-7890", password_digest: "password", phone_approval: true)

User.create(first_name: "Matt", last_name: "Baker", email: "matt@gmail.com", phone: "123-456-7890", password_digest: "password", phone_approval: true)

User.create(first_name: "Duke", last_name: "Greene", email: "duke@gmail.com", phone: "123-456-7890", password_digest: "password", phone_approval: true)

User.create(first_name: "Ellie", last_name: "Poley", email: "ellie@gmail.com", phone: "123-456-7890", password_digest: "password", phone_approval: true)

User.create(first_name: "Avner", last_name: "Shanan", email: "avner@gmail.com", phone: "123-456-7890", password_digest: "password", phone_approval: true)

User.create(first_name: "Alyssa", last_name: "Diaz", email: "alyssa@gmail.com", phone: "123-456-7890", password_digest: "password", phone_approval: true)

User.create(first_name: "Pete", last_name: "Macaluso", email: "pete@gmail.com", phone: "123-456-7890", password_digest: "password", phone_approval: true)

Team.create(name: "Red Pandas", captain_id: 1, sport_id: 1, mascot_name: "Panda", mascot_url: "http://seveninchesofyourtime.com/wp-content/uploads/2014/05/Yawning-Red-Panda.jpg")

Team.create(name: "Salamanders", captain_id: 2, sport_id: 1, mascot_name: "Salamanders", mascot_url: "https://upload.wikimedia.org/wikipedia/commons/4/41/Salamander_head.png")

Team.create(name: "Wolves", captain_id: 3, sport_id: 2, mascot_name: "Wolves", mascot_url: "http://subtlemix.com/wp-content/uploads/Wolf-un-dominated-wolves-19664762-1600-1200.jpg")

Sport.create(name: "Basketball", min_players: 3, max_players: 5)

Sport.create(name: "Soccer", min_players: 7, max_players: 11)

Roster.create(player_id: 1, team_id: 1)
Roster.create(player_id: 2, team_id: 2)
Roster.create(player_id: 3, team_id: 3)
Roster.create(player_id: 4, team_id: 1)
Roster.create(player_id: 5, team_id: 2)
Roster.create(player_id: 6, team_id: 3)
Roster.create(player_id: 7, team_id: 1)
Roster.create(player_id: 8, team_id: 2)
Roster.create(player_id: 9, team_id: 3)
Roster.create(player_id: 10, team_id: 1)

Game.create(schedule: "2016-08-26", time: "01:00:00", location: "Grand Park", home_team_id: 1, away_team_id: 2, home_team_score: 100, away_team_score: 99)

Game.create(schedule: "2016-08-27", time: "01:00:00", location: "DBC", home_team_id: 3, away_team_id: 1)

Game.create(schedule: "2016-08-28", time: "01:00:00", location: "The River", home_team_id: 2, away_team_id: 3)

Game.create(schedule: "2016-08-26", time: "01:00:00", location: "Grand Park", home_team_id: 1, away_team_id: 3)
