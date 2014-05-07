class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    check_inputs(isbn, price)

    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % @price
  end


  private

  def check_inputs(isbn, price)
    if isbn.strip.empty? || price <= 0
      raise ArgumentError
    end
  end
end