require 'pry'
class CashRegister
  attr_accessor :total, :discount
  def initialize(discount = 20)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    @total += (price * quantity)
  end
  
  def apply_discount
    calc_discount = @total * (@discount / 100)
    @total -= calc_discount
    binding.pry
  end
end
