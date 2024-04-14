# Ruby: object-oriented programming

## Summary of Solution: Inventory management

The proposed challenge involved creating a basic inventory application in Ruby, using object-oriented programming (OOP) and appropriate data structures to manage products and their quantities in stock. The implemented solution follows these steps:

## Project Structure:

```
app_stock_console
├── Gemfile                 # Define dependências RubyGems
├── Gemfile.lock             # Registra versões de dependências
├── .gitkeep                # Mantém o diretório no rastreamento do Git
├── init.rb                 # Arquivo de entrada principal
├── db                      # Diretório para arquivos de dados
│   ├── products.csv         # Arquivo CSV com produtos
│   └── products.json        # Arquivo JSON com produtos
├── basicos                 # Diretório para funções básicas
│   └── regex.rb             # Funções de validação usando regex
├── display                 # Diretório para funções de exibição
│   ├── services            # Subdiretório para serviços de exibição
│   │   ├── add_product.rb   # Funções para adicionar produtos
│   │   ├── list_products.rb  # Funções para listar produtos
│   │   ├── remove_stock.rb  # Funções para remover produtos do estoque
│   ├── menu.rb              # Funções para exibir o menu
│   └── screen_operations.rb # Funções para operações na tela
├── domain                  # Diretório para a lógica do domínio
│   ├── infrastructure       # Subdiretório para infraestrutura de persistência
│   │   ├── csv_repository.rb # Repositório para acesso a dados CSV
│   │   └── json_repository.rb # Repositório para acesso a dados JSON
│   ├── entities            # Subdiretório para entidades do domínio
│   │   └── product.rb       # Classe para representar um produto
│   └── services            # Subdiretório para serviços de domínio
│       └── product_services.rb # Funções para operações de produtos
└── .rvmrc 
```

1. **Structure and Modules:**

The code is organized into distinct modules for greater modularity and reusability:
   - `domain/services/product_services`: Contains functions to manage products, such as adding, removing, searching, and updating.
   - `display/menu`: Contains functions to display interactive menus for the user.
   - `display/screen_operations`: Contains functions for screen operations, such as clearing and displaying messages.
   - `basic/regex_validation`: Contains functions for user input validation using regular expressions.

2. **Data Repositories:**

Two data repositories were implemented to store product information:
   - `CSVRepository`: Uses the CSV format to persist data in a file (`db/products.csv`).
   - `JSONRepository`: Uses the JSON format to persist data in a file (`db/products.json`).
   - Note: The solution demonstrates both types of repositories, but you can choose to use only one, according to your preference.

3. **Classes and Objects:**

   - The `Product` class represents a single product, with attributes such as id, name, price, and quantity.
   - The `ProductServices` class encapsulates operations related to products, using the chosen data repository to persist and retrieve information.
   - The `Menu` class is responsible for displaying interactive menus for the user and capturing their choice.
   - The `ScreenOperations` class provides functions to clear the screen and display messages on the screen.

4. **Main Application Flow:**

   - The `init.rb` file serves as the main entry point of the application.
   - A `loop` keeps the application running until the user chooses to exit.
   - Inside the loop, the main menu is displayed, the user's choice is captured, and directed to the appropriate functions to perform the desired operations (list products, add, remove stock).

5. **Technical Details:**

   - Programming Language: Ruby (current version: 3.1.2)
   - Libraries used:
     - CSV for CSV file manipulation
     - JSON for JSON file manipulation
     - tty-prompt for user interaction (optional)
   - Programming Paradigm: Object-oriented programming (OOP)
   - Data Structures:
     - Classes and objects to represent products and operations
     - Arrays and hashes to store temporary data
     - CSV and JSON files for data persistence

6. **Considerations and Future Improvements:**

   - The current solution implements a basic inventory application with basic commands.
   - For a real application, additional features such as:
     - More robust input validation
     - User management with different levels of access
     - Database integration
     - Reports and charts
     - Graphical User Interface (GUI)
   - It is important to thoroughly test the code to ensure its reliability and address any potential bugs.
   - Code documentation with explanatory comments facilitates understanding and maintenance of the application in the future.

## Conclusion:

Through the application of OOP concepts, appropriate data structures, and useful libraries, it was possible to develop a functional inventory application in Ruby. The solution demonstrates the ability of the language and the techniques used to create useful and manageable applications.
