class Oystercard

attr_reader :balance, :entry_station , :journey_list, :exit_station
MAXIMUM_BALANCE = 90
MINIMUM_BALANCE = 1


    def initialize
        @balance = 0
        @in_use = true
        @entry_station
        @journey_list = []
        @exit_station
    end

    def top_up(money)
        fail 'Maximum balance of 90 reached' if money + balance > MAXIMUM_BALANCE
        @balance += money
    end

    def touch_in(station)
        fail 'not enough funds: top up' if balance < MINIMUM_BALANCE
        @in_use = true
        @entry_station = station
    end

    def touch_out(station)
       deduct(MINIMUM_BALANCE)
       @in_use = false
       @journey_list
       @exit_station = station
       @journey_list << { entry_station: @entry_station, exit_station: @exit_station }
       @entry_station = nil
    end

    def in_journey
        @in_use

    end

   private

    def deduct(money)
        @balance -= money
    end
end
