module ScreenOperations
  def clear_screen
    system("clear")
  end

  def show_message(message)
    puts "Message: #{message}"
  end
