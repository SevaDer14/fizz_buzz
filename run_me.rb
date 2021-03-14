# Loads custom methods for Fizz Buzz game
load './lib/fizz_buzz_lib.rb'

# Starts the game, greets player, lists the rules and asks
# if player ready to play
print_greetings
start_game

# declaring starting vales of some variables
number = 1
player_fail = false # this variable, when true, exits the main loop if player made a mistake

# Main loop of the game
until player_fail == true do
    
    # Computer's turn
    puts fizz_buzz(number)    
    
    # Starts the countdown in the background
    # when it reaches 0, aborts game with message 
    # that player was thinking too long
    countdown = Thread.new do
        seconds = 5
        start_countdown(seconds)
        puts ''
        abort "Too long.. You Lost."
    end

    # Player's turn to
    player_input = gets.chomp
    
    # As soon as player inputs value, countdown Thread is terminated
    countdown.terminate
    countdown.join

    # Checks Player's input is correct 
    if player_input.to_s != fizz_buzz(number+1).to_s
        player_fail = true
    end

    # If player is correct, increases nuber to the next one
    number += 2    

end

# What can you say, the game is impossible to beat
puts "Incorrect.. You Lost."
