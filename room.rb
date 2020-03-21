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

  def check_in_customer(guest)
    if occupants < 8
      @occupants << guest
    else
      return "The room is full."
    end
  end

  def check_out_customer(guest)
    @occupants.delete(guest)
  end

  def add_song(song)
    @songs << song
  end

  def charge_entry_fee(guest)
    guest.wallet -= 10
  end
  # not working yet

end
