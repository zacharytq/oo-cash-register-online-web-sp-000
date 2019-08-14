class CashRegister
  attr_accessor :total, :discount
  def initialize(discount)
    @total = 0
    self.discount = discount
  end

  def add_item(item, price, quant = 1)
    @total += (price*quant)
  end

  def apply_discount
    percent_discount = (@discount/100) * @total
    puts percent_discount.to_s
    @total = @total - percent_discount
    puts "After the discount, the total comes to $#{@total}."
    percent_discount
  end
end
