#require "pry" #c'était juste pour tester
#class player 
class Player 
    attr_accessor :name, :life_points #attributs d'un joueur

    def initialize(name)
        @name = name.to_s
        @life_points = 10
    end

#etat d'un joueur méthode show_state objet Player avec name et life_points
    def show_state
        puts "#{@name} a #{life_points} points de vie"
    end 

#subir une attaque avec gets_damage objet Player.
#joueurs player1.gets_damage(5)
    def gets_damage(damages)
        @life_points = @life_points - damages
        if @life_points <= 0
            puts "le joueur #{@name} a été tué"
        end
    end
#méthode attacks player1.attacks(player2)

    def attacks(player)
        puts "le joueur #{name} attaque le joueur #{player.name}"
#faire subir les attaques
        damage_received = compute_damage
        puts "il lui inflige #{damage_received} points de dommages"
        player.gets_damage(damage_received)
    end
#méthode compute_damage
    def compute_damage
        return rand(1..6)
    end
end 

#binding.pry #c'était juste pour tester

