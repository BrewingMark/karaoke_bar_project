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

end
