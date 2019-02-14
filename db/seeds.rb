# frozen_string_literal: true

Player.destroy_all
Coach.destroy_all
Team.destroy_all

20.times do
  team = Team.create(name: Faker::Games::Dota.unique.team)

  number_of_coaches = rand(3..4)

  6.times do
    team.players.create(name: Faker::Kpop.unique.solo,
                        game_name: Faker::Games::Dota.unique.player,
                        country: Faker::WorldCup.team)
  end

  number_of_coaches.times do
    team.coaches.create(name: Faker::FunnyName.unique.name)
  end
end

puts "Number of teams: #{Team.count}"
puts "Number of players: #{Player.count}"
puts "Number of coaches: #{Coach.count}"
