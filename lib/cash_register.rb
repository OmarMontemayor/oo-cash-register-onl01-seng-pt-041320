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
    binding.pry
    dollar_discount = @total * (@discount * .01)
    @total = @total - dollar_discount
  end
end
