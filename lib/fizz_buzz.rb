def fizz_buzz(number)
    check = number.is_a? String
    if check == true
        'Error#1: Please enter a positive number'
    else        
        if number == 0
            'Error#2: You hacked the universe! The answer is Quantum superposition of fizz, buzz, fizzbuzz and 0..'        
        elsif number % 15 == 0
            'fizzbuzz'
        elsif number % 3 == 0
            'fizz'
        elsif number % 5 == 0
            'buzz'    
        else
            number
        end
    end
    
end