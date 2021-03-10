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
        elsif has_zero_remainder(number, 15) # 15 first as it is itself divisable by 3 and 5
            'fizzbuzz'
        elsif has_zero_remainder(number, 3)
            'fizz'
        elsif has_zero_remainder(number, 3)
            'buzz'    
        else
            number
        end
    end    
end