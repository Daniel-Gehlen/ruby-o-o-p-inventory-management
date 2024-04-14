module RegexValidation
  def valid_name?(name)
    name =~ /\A[A-Za-z0-9\s]+\z/
  end

  def valid_price?(price)
    price =~ /\A[0-9]+(\.[0-9]{1,2})?\z/
  end

  def valid_quantity?(quantity)
    quantity =~ /\A[0-9]+\z/
  end
end
