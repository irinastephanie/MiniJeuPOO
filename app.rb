require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
#prénom stocké dans variable

player1 = Player.new("Josiane")
player2 = Player.new("José")

#présentation
puts "Voici nos adversaires du jour"
puts "L'état de chaque joueur"
player1.show_state
player2.show_state
puts "\n"

#fight
puts "Passons à la phase d'attaque"

#boucle
while player1.life_points > 0 && player2.life_points > 0
    player1.attacks(player2)
    player2.show_state
    if player2.life_points <= 0
        break #sortir de la boucle
    end

player2.attacks(player1)
player1.show_state
if player1.life_points <= 0
    break #sortir de la boucle
end
puts "\n"
puts "Voici l'état de chaque joueur"
player1.show_state
player2.show_state
puts "\n"
end 
    

    binding.pry
