module ProductOperations
  def list_products
    products = ProductServices.new(repository: CSVRepository.new(file_path: 'db/products.csv')).all

    if products.empty?
      ScreenOperations.show_message("Nenhum produto encontrado.")
    else
      products.each_with_index do |product, index|
        puts "#{index + 1}. #{product}"
      end
    end
  end
end
