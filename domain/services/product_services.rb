class ProductServices
  def initialize(repository:)
    @repository = repository
  end

  def all
    @repository.all
  end

  def find_by_id(id:)
    @repository.find_by_id(id)
  end

  def add(product:)
    @repository.save(product)
  end

  def remove_stock(product:, quantity:)
    if product.quantity >= quantity
      product.quantity -= quantity
      @repository.save(product)
    else
      raise StandardError, "Quantidade insuficiente do produto #{product.name}"
    end
  end
end
