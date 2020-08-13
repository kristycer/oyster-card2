require_relative 'journey'
class JourneyLog 

attr_reader :journey, :journeys

    def initialize(journey_class: Journey)
        @journey_class = journey_class
        @journeys = []
    end

    def start(station)
      @entry_station = station
      add(entry_station: station)
    end 

     def journeys
         @journeys.dup
     end 

     def finish(station)
        @exit_station = station
         add(exit_station: station)
     end
    private 

     def current_journey
         @current_journey || journey_class.new
         
     end 

     

     def add(journey)
        @journeys << journey
      end
end