class Currency
attr_reader :amount, :currency_code
# should things be passed in here or no? Not sure about when to do that or not.
  def initialize(amount, currency_code)
    @amount = amount.to_f
    @currency_code = currency_code
  end

  def add_amounts(account_one, account_two)
    if account_one.currency_code == account_two.currency_code
      added_amounts = account_one.amount + account_two.amount
      return added_amounts
    else
      return false
    end
  end

  def subtract_amounts(account_one, account_two)
    if account_one.currency_code == account_two.currency_code
      subtracted_amounts = account_one.amount - account_two.amount
      return subtracted_amounts
    else
      return false
    end
  end

end
