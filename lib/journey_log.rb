require_relative 'journey'
class JourneyLog 

attr_reader :journey

    def initialize(journey_class: Journey)
        @journey_class = journey_class
        @journeys = []
    end

    def start(station)
      
       @entry_station = @station
    end 

     def journeys
         @journeys.dup
     end 

    private 

     def current_journey
         @current_journey || journey_class.new

     end 

     def add(journey)
        @journeys << journey
      end
end