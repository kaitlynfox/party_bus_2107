class Bus

  attr_reader :name, :capacity, :passengers

  def initialize(name_param, capacity_param)
    @name = name_param
    @capacity = capacity_param
    @passengers = []
  end

  def add_passenger(name_of_passenger)
    @passengers << name_of_passenger
  end

  def yell_at_passengers

    # I feel like I should be doing this with .each but I am blanking out
    # and did a google search and tried the second option below to return an array
    # that is uppercased
    
    # @passengers.each do |passenger|
    #   @passengers << passenger.upcase
    # end

    @passengers.map!(&:upcase)
  end

  def over_capcity?
    if @passengers.length <=4
      false
    else
      true

    end
  end

  def number_of_passengers
    @passengers.length
  end

  def kick_out
    @passengers.shift
  end

end
