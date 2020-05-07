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
    "After the discount, the total comes to $#{@total.to_i}."
    if calc_discount == 0.0
      "There is no discount to apply."
    end
  end
end
