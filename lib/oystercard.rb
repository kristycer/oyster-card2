class Oystercard

attr_reader :balance
MAXIMUM_BALANCE = 90


    def initialize
        @balance = 0
    end

    def top_up(money)
        fail 'Maximum balance of 90 reached' if money + balance > MAXIMUM_BALANCE
        @balance += money
    end 

    def deduct(money)
        @balance -= money
    end
   
end 