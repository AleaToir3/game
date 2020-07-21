require 'pry'

class Player
    attr_accessor :name, :life_points
    def initialize(name)
        @name = name
        @life_points = 10
    end
    def show_state
        puts "#{name} #{@life_points} point de vie \n"
        if @life_points >= 9
            puts " c'est bon le combat COTINUE !!!!! \n"
        elsif @life_points >= 5
            puts " u would be DIE !!!!\n"
         
        elsif @life_points <= 0 
            puts " #{@name} voie le chemin de la lumiere !\n"
puts"
                 ,- """" -.            
                /        \\          
                :(_)  (_);                  
                `   ''  '         
                  `++++'                    
                   `--' 
"


        end
    end

    def gets_damage(domage)
        @life_points = @life_points - domage  
        puts " a subit  -#{domage} de vie"  
    end

    def compute_domage
       return rand(1..6)    
              
    end

    def attack(target)
        puts " attention :#{@name} attaque :#{target.name}"    
        print  "#{target.name} a :"
        domage = compute_domage 
        target.gets_damage(domage)
    end   
end
 
class HumanPlayer < Player
    attr_accessor :weapon_level

    def initialize(name)
        @life_points = 100
        @weapon_level = 1
    end
    def show_state
        puts "#{@name} est un SUPERHUMAN !! il a : #{@life_points} et une arme de LEVEL : #{weapon_level} "
        
    end

    def compute_damage
       return rand(1..6) * @weapon_level
    end

    def search_weapon
        weapon_find = rand(1..6) 
        if weapon_find > @weapon_level
            @weapon_level =  weapon_find
        puts "Tu a trouver une arme de LVL:#{weapon_find} ! we TAKE IT ! we DO IT ! we KILL IT"
        elsif 
            puts "Tu a trouver une arme de LVL:#{weapon_find}c'est une daube on jete !"
        end
    end
   
        
   
end


