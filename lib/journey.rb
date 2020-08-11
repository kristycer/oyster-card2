require_relative 'oystercard'

class Journey

attr_reader :journey_list

  PENALTY_FARE = 6

  def initialize

  end

  def fare
    PENALTY_FARE
  end

  def complete?

  end

  def finish(station)
    self
  end

end
