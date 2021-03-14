require 'highline/import'

# Checks number for divisablility on a divider
def has_zero_remainder?(number, divider)
    number % divider == 0
end

# FizzBuzz Method
def fizz_buzz(number)
    # Checks if user input is valid
    check_for_string = number.is_a? String  
    if check_for_string == true
        'Error#1: Please enter an integer > 0'
    elsif number < 1
        'Error#1: Please enter an integer > 0'
    # Algo for FizzBuzz
    else        
        if has_zero_remainder?(number, 15) # 15 first as it is itself divisable by 3 and 5
            'fizzbuzz'
        elsif has_zero_remainder?(number, 3)
            'fizz'
        elsif has_zero_remainder?(number, 5)
            'buzz'    
        else
            number
        end
    end    
end

# Method to output greeting message with rules of the game
def print_greetings
    puts "Lets play Impossible FizzBuzz! The game you will loose.."
    puts "The rules are:"
    puts "          1. I go first and say 1, you go after me and type in 2"
    puts "          2. Every turn we count upwards and typing in the number, except:"
    puts "          3. If the number is divisable by 3 - type in 'fizz'"
    puts "          4. If the number is divisable by 5 - type in 'buzz'"
    puts "          5. If the number is divisable by both 3 and 5 - type in 'fizzbuzz'"
    puts "          6. And the last rule - You think too long, you lose"   
end

# method to ask user to start or exit the game
def start_game    
    answer = ''
    until answer.downcase == 'y'
        answer = ask("Start game? [y/n]")
        if answer == 'n'
            abort 'Game Closed'
        end      
    end    
end

# countdown method
def start_countdown(seconds)
    time = seconds * 10
    time.downto(0) do |i|
        sleep 0.1
    end
end
    puts "Time is up"



    
