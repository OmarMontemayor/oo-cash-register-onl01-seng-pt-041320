require 'pry'
class CashRegister
  attr_accessor :total, :discount :item
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    @total += (price * quantity)
  end
  
  def apply_discount
    if @discount > 0
      calc_discount = @total * (@discount.to_f / 100)
      @total = @total - calc_discount
      "After the discount, the total comes to $#{@total.to_i}."
    else
      if @discount == 0
        "There is no discount to apply."
      end
    end
  end
  
  def items
    items << @item
    items
  end
end
