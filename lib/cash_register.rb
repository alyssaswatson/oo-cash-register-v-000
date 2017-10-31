
class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += price*quantity
  end

  def apply_discount
    percentage = @discount/100
    amount_off = @total*percentage
    result = @total - amount_off
    result

  end


end
