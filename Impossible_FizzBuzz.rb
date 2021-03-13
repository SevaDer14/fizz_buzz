load './lib/fizz_buzz_lib.rb'

print_greetings
start_game

number = 1
player_fail = false
until player_fail == true do
    
    puts fizz_buzz(number)    
    
    timer = Thread.new do
        start_countdown(5)
        puts ''
        abort "Too long.. You Lost."
    end

    player_input = gets.chomp
    
    timer.terminate
    timer.join

    if player_input.to_s != fizz_buzz(number+1).to_s
        player_fail = true
    end

    number += 2    

end
puts "Incorrect.. You Lost."
