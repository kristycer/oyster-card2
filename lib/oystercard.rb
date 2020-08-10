class Oystercard

attr_reader :balance
MAXIMUM_BALANCE = 90


    def initialize
        @balance = 11
    end

    def top_up(money)
        fail 'Maximum balance of #{maximum_balance} reached' if money + @balance > MAXIMUM_BALANCE
        @balance += money
    end 

   
end 