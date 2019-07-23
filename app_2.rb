require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
puts "Hello, il faut le blabla alors le voilà ahahaha"
puts "Ton prénom?"
print">"
human_name = gets.chomp
player1 = Humanplayer.new("#{human_name}")
player2 = Player.new("Josiane")
player3 = Player.new("jose")
enemies = [player2 , player3]
tour = 0
puts "Passons au mode attaque"

while (player2.life_points > 0 || player3.life_points > 0) && player1.life_points > 0
    tour += 1
    puts "\n"
    puts "------Tour #{tour}------"
    puts "\n"
    player1.show_state
    puts "Quelle action veux-tu effectuer ?"
    puts "\n"
    puts "a - chercher une meilleure arme"
    puts "s - chercher à se soigner "
    puts "\n"
    puts "Attaquer un joueur en vue :"
    enemies.each_with_index do |enemie, index|
      if enemie.life_points > 0
        puts "#{index} - #{enemie.show_state}"
      end
    end
    print "> "
  
    action = gets.chomp
    if action == "a"
      player1.search_weapon
    elsif action == "s"
      player1.search_health_pack
    elsif action == "0"
      player1.attacks(player2)
    elsif action == "1"
      player1.attacks(player3)
    else
      puts "Tu n'as réalisé aucune action !"
    end
    
    puts "\n"
    puts "Les autres joueurs t'attaquent !"
    enemies.each do |enemie|
      if enemie.life_points > 0
        enemie.attacks(player1) 
      end
    end
  end
  puts "\n"
  puts "La partie est finie"
  if player1.life_points > 0
    puts  "BRAVO ! TU AS GAGNE !"
  else
    puts "Loser ! Tu as perdu !" 
  end
