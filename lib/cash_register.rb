require 'pry'
class CashRegister
  attr_accessor :total, :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    @total += (price * quantity)
  end
  
  def apply_discount
    binding.pry
    calc_discount = @total * (@discount / 100)
    @total = @total - calc_discount
  end
end
