Absolutely, here's the complete code for the init.rb file with explanations in English:

Ruby
# Load required modules and files
require_relative 'domain/services/product_services'
require_relative 'display/menu'
require_relative 'display/screen_operations'
require_relative 'basic/regex_validation'

# Initialize Product Repository (using CSV by default)
product_repository = CSVRepository.new(file_path: 'db/products.csv')

# Create Product Services instance with the repository
product_services = ProductServices.new(repository: product_repository)

# Main application loop
loop do
  # Clear screen before displaying menu
  ScreenOperations.clear_screen

  # Display the main menu
  Menu.show_main_menu

  # Get user's choice
  choice = gets.chomp.to_i

  # Handle user's choice using a case statement
  case choice
  when 1
    # List all products
    product_services.all.each_with_index do |product, index|
      puts "#{index + 1}. #{product}"
    end
  when 2
    # Add a new product
    ProductOperations.add_product(product_services: product_services)
  when 3
    # Remove stock from a product
    ProductOperations.remove_stock(product_services: product_services)
  when 4
    # Exit the application
    break
  else
    # Handle invalid choices
    ScreenOperations.show_message("Invalid option. Please try again.")
  end
end

# Clear screen and display goodbye message upon exit
ScreenOperations.clear_screen
ScreenOperations.show_message("Thank you for using the Stock App!")
