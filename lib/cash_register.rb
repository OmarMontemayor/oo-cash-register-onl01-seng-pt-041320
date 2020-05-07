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
    calc_discount = @total * (@discount.to_f / 100)
    @total = @total - calc_discount
    "After the discount, total comes to #{@total.to_i}."
  end
end
