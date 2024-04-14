class CSVRepository
  def initialize(file_path:)
    @file_path = file_path
  end

  def all
    products = []

    CSV.foreach(@file_path, headers: true) do |row|
      products << Product.new(
        id: row['id'].to_i,
        name: row['name'],
