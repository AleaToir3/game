require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
player1 = Player.new("Sarkozy")
player2 = Player.new("Maccron")
x=0

puts "                  a ma droit #{player1.name}  avec #{player1.life_points} PV"
puts "                  et a gauche #{player2.name}  avec #{player2.life_points} PV"

puts "          =================== FIGHT ======================"
puts "\n"
puts "\n"
puts "
                               |
                  //////////// | ---------------------------------,
                  «^^^^^^^^^^^ | --------------------------------'
                               |        "     

                               while player1.life_points > 0 && player2.life_points > 0
                                x += 1
                                puts "          =================== ROUND - #{x} ======================"

                                player1.attack(player2)
                                player2.show_state
                                print "\n >> appuie sur une touche pour continuez\n"
                                STDIN.getch 
                                x += 1
                                puts "          =================== ROUND - #{x} ======================"

                                if player2.life_points < 0 || player2.life_points == 0
                                    break
                                end
                                player2.attack(player1)
                                player1.show_state
                                print "\n >> appuie sur une touche pour continuez\n"

                                STDIN.getch 
                                

                                    if player1.life_points  < 0 || player1.life_points == 0 
                                        break
                                    end
                                end




                   