class CashRegister
  attr_accessor :total, :discount, :price, :items
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quant = 1)
    @price = price
    @total += price * quant
    quant.times {@items << item}
  end

  def apply_discount
    percent_discount = (@discount/100) * @total
    puts percent_discount.to_s
    @total = @total - percent_discount
    puts "After the discount, the total comes to $#{@total}."
    percent_discount
  end
end
