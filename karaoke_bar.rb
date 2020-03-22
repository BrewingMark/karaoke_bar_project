class KaraokeBar

  attr_reader :name, :cash

  def initialize(name, cash, drinks)
    @name = name
    @cash = cash
    @drinks = drinks
  end

  def inventory()
    return @drinks.length
  end

  def receive_payment(value)
    @cash += value
  end

end
