module ProductOperations
  def add_product
    product_data = Menu.show_add_product_menu

    product = Product.new(
      id: next_product_id,
      name: product_data[:name],
      price: product_data[:price].to_f,
      quantity: product_data[:quantity].to_i
    )

    ProductServices.new(repository: CSVRepository.new(file_path: 'db/products.csv')).add(product: product)

    ScreenOperations.show_message("Produto #{product.name} adicionado com sucesso!")
  end

  private

  def next_product_id
    products = ProductServices.new(repository: CSVRepository.new(file_path: 'db/products.csv')).all

    products.last&.id&.succ || 1
  end
end
