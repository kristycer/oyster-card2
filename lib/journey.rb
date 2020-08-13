require_relative 'oystercard'

class Journey

attr_reader :entry_station, :exit_station

  PENALTY_FARE = 6

  def initialize(entry_station: nil)
    @entry_station = entry_station
    @complete = false
  end 


  def exit(station = nil)
    @exit_station = station
    @complete = true
    self 
    
    
  end 
  def fare
    PENALTY_FARE
  end

  def complete?
    @complete 

  end

  #  def finish(station)
  #    self
  #  end

end
