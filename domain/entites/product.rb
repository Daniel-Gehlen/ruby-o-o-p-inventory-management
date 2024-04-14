class Product
  attr_accessor :id, :name, :price, :quantity

  def initialize(id:, name:, price:, quantity:)
    @id = id
    @name = name
    @price = price
    @quantity = quantity
  end

  def to_s
    "Produto: #{@id} - #{@name} - R$ #{@price} (x #{@quantity})"
  end
end
