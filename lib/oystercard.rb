class Oystercard

attr_reader :balance
MAXIMUM_BALANCE = 90
MINIMUM_BALANCE = 1


    def initialize
        @balance = 0
        @in_use = true
    end

    def top_up(money)
        fail 'Maximum balance of 90 reached' if money + balance > MAXIMUM_BALANCE
        @balance += money
    end 

    def deduct(money)
        @balance -= money
    end

    def touch_in
        fail 'not enough funds: top up' if balance < MINIMUM_BALANCE
    end 

    def touch_out
    end 

    def in_journey
        @in_use 
        
    end
   
end 