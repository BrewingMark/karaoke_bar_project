class Room

  attr_reader :number

  def initialize(number)
    @number = number
    @occupants = []
    @songs = []
  end

  def occupants()
    return @occupants.length
  end

  def song_queue()
    return @songs.length
  end

  def check_in_customer(customer)
    if occupants < 8
      @occupants << customer
    else
      return "The room is full."
    end
  end

end
