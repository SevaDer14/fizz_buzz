load '/home/demerzel/ruby_exercises/fizz_buzz/lib/fizz_buzz_lib.rb'

print_greetings
start_game

number = 1
player_fail = false
until player_fail == true do
    puts fizz_buzz(number)    
    
    player_input = gets.chomp       
    if player_input.to_s != fizz_buzz(number+1).to_s
            player_fail = true
        end
    number += 2

end
print "You've Lost.."
