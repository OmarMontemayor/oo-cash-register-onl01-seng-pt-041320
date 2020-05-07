class CashRegister
  attr_accessor :total, :discount
  def initialize(discount = 20)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price)
    @total += price
  end
end
