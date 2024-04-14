module Menu
  def show_main_menu
    puts "Main Menu:"
    puts "1. List Products"
    puts "2. Add Product"
    puts "3. Remove from Stock"
    puts "4. Exit"
    print "Enter your choice: "
  end

  def show_add_product_menu
    puts "Add Product:"
    print "Name: "
    name = gets.chomp

    print "Price: "
    price = gets.chomp

    print "Quantity: "
    quantity = gets.chomp

    { name: name, price: price, quantity: quantity }
  end

  def show_remove_stock_menu
    puts "Remove from Stock:"
    print "Product ID: "
    id = gets.chomp.to_i

    print "Quantity to remove: "
    quantity = gets.chomp.to_i

    { id: id, quantity: quantity }
  end
end
