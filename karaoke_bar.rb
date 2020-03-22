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

  def charge_entry_fee(guest)
    guest.make_payment(10)
    receive_payment(10)
  end

end
