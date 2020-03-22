class Guest

  attr_reader :name, :age, :wallet

  def initialize(name, age, wallet)
    @name = name
    @age = age
    @wallet = wallet
  end

  def make_payment(value)
    @wallet -= value
  end

end
