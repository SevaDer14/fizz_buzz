require './lib/fizz_buzz_lib'

describe 'fizz_buzz' do

    it 'returns 1 if number is 1' do
        expect(fizz_buzz(1)).to eq 1 
    end

    it "returns 'fizz' if number is divisible by 3" do
        expect(fizz_buzz(3)).to eq 'fizz'
    end

    it "returns 'buzz' if number is divisible by 5" do
        expect(fizz_buzz(5)).to eq 'buzz'
    end

    it "returns 'fizzbuzz' if number is divisible by 15" do
        expect(fizz_buzz(15)).to eq 'fizzbuzz'
    end

    it "returns 'Error#1' if user puts in string" do
        expect(fizz_buzz('string')).to eq 'Error#1: Please enter an integer > 0'
    end

    it "returns 'Error#2' if user puts in number < 1" do
        expect(fizz_buzz(0)).to eq 'Error#1: Please enter an integer > 0'
    end
    
end
