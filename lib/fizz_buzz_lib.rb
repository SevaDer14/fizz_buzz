require 'highline/import'

# Checks number for divisablility on a divider
def has_zero_remainder?(number, divider)
    number % divider == 0
end

# FizzBuzz Method
def fizz_buzz(number)
    # Checks if user input is string 
    check = number.is_a? String
    if check == true
        'Error#1: Please enter a positive number'
    # Algo for FizzBuzz
    else        
        if number == 0 # Special case if user inputs zero
            'Error#2: You hacked the universe! The answer is Quantum superposition of fizz, buzz, fizzbuzz and 0..'        
        elsif has_zero_remainder?(number, 15) # 15 first as it is itself divisable by 3 and 5
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
    puts "lets play impossible FizzBuzz! The game you always loose.."
    puts "The rules:"
    puts "          1. I go first and say 1, you go after me and type in 2"
    puts "          2. Every turn we count upwards and typing in number except:"
    puts "          3. If the number is divisable by 3 - type in 'fizz'"
    puts "          4. If the number is divisable by 5 - type in 'buzz'"
    puts "          5. If the number is divisable by both 3 and 5 - type in 'fizzbuzz'"
    puts "          6. NOT IMPLEMENTED YET (You think too long - you lose)"   
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
def start_countdown(time)
    seconds = time * 10
    seconds.downto(0) do |i|
        sleep 0.1
    end
end
    puts "time is up"



    
