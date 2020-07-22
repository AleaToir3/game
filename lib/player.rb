require 'pry'


class Player
    attr_accessor :name, :life_points
    def initialize(name)
        @name = name
        @life_points = 10
    end

    def show_state
        puts "#{@name} est un player il a #{@life_points} point de vie \n"
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
        
        puts "a subit  -#{domage} domage"  
        puts " il rest #{@life_points} PV"
    end

    def compute_domage
       return rand(1..6)    
              
    end

    def attack(target)
        puts " attention :#{@name} attaque :#{target.name}"    
      
        domage = compute_domage 
        target.gets_damage(domage)
    end   
end
                    ###########################################################################################################
                    #                                                                                                         #
                    ###########################################################################################################
                    
class HumanPlayer < Player
    attr_accessor :weapon_level

    def initialize(name)
        @name = name
        @life_points = 100
        @weapon_level = 1
    end
    def show_state
        puts "#{@name} est un SUPERHUMAN !! il a : #{@life_points} et une arme de LEVEL : #{@weapon_level} "
        
    end

    def compute_damage
       return rand(1..6) * @weapon_level
    end

    def search_weapon
        weapon_find = rand(1..6) 
        if weapon_find > @weapon_level
            @weapon_level =  weapon_find
        puts " #{name} a trouver une arme de LVL:#{weapon_find} ! we TAKE IT ! we DO IT ! we KILL IT"
        elsif 
            puts "#{name} a trouver une arme de LVL:#{weapon_find}c'est une daube on jete !"
        end
    end
        
   def search_health_pack
     find_health_pack  = rand(1..6) 
     puts " tu a trouver un pack rang #{find_health_pack} "
        if find_health_pack == 1  # c = a 1 donc je fais rien
            puts " Combien de fils a la mère de Justin ? Juste un. !!! donc pas de vie "
            elsif find_health_pack >= 2 && find_health_pack <=5 # c entre 2 et 5 jajoute 50PV mais si ca depasse je met le diff
                if @life_points == 100
                    puts " pas de maladie pas de point de vie !! ta 100 "
                    elsif @life_points < 100
                        health=  100 - @life_points 
                        @life_points = @life_points + health 
                        puts "tu a trouver 50 PV et a recupere #{health}"
                end
            else find_health_pack == 6 # 6 donc add 80PV
                if @life_points == 100
                    puts " pas de maladie pas de point de vie !! ta 100 "
                    elsif life_points < 100
                        health= 100 - @life_points 
                        @life_points = @life_points + health 
                        puts "tu a trouver 80 PV et a recupere #{health}"
                end   
        end
    end

end
binding.pry