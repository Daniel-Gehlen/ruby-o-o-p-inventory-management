module ProductOperations
  def remove_stock
    product_data = Menu.show_remove_stock_menu

    product = ProductServices.new(repository: CSVRepository.new(file_path: 'db/products.csv')).find_by_id(id: product_data[:id])

    if product
      ProductServices.new(repository: CSVRepository.new(file_path: 'db/products.csv')).remove_stock(product: product, quantity: product_data[:quantity])

      ScreenOperations.show_message("Estoque do produto #{product.name} atualizado com sucesso!")
    else
      ScreenOperations.show_message("Produto com ID #{product_data[:id]} não encontrado.")
    end
  end
end
