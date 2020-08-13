require_relative 'oystercard'

class Journey

attr_reader :entry_station, :exit_station

  PENALTY_FARE = 6
  NORMAL_FARE = 1

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
    if @exit_station == nil 
    PENALTY_FARE
    elsif @entry_station.zone > 2
      3
    else 
    NORMAL_FARE
  end
end 


  def complete?
    @complete 

  end

  #  def finish(station)
  #    self
  #  end

end
