class JSONRepository
  def initialize(file_path:)
    @file_path = file_path
  end

  def all
    products = []

    File.open(@file_path, 'r') do |file|
      data = JSON.parse(file.read)

      data['products'].each do |product_data|
        products << Product.new(
          id: product_data['id'].to_i,
          name: product_data['name'],
          price: product_data['price'].to_f,
          quantity: product_data['quantity'].to_i
        )
      end
    end

    products
  end

  def find_by_id(id:)
    products = all

    products.find { |product| product.id == id }
  end

  def save(product:)
    products = all

    existing_product = products.find { |p| p.id == product.id }

    if existing_product
      existing_product.name = product.name
      existing_product.price = product.price
      existing_product.quantity = product.quantity
    else
      products << product
    end

    save_to_file(products)
  end

  private

  def save_to_file(products)
    data = { 'products': products.map(&:to_h) }

    File.open(@file_path, 'w') do |file|
      file.write(JSON.pretty_generate(data))
    end
  end
end
