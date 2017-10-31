
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
    if @discount == 0
      puts "There is no discount to apply."
    else
      @total = @total - (@discount/100.0)*@total
      puts "After the discount, the total comes to #{@total}."
    end
  end


end
