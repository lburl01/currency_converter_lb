
class Currency
attr_reader :amount, :currency_code
# should things be passed in here or no? Not sure about when to do that or not.
  def initialize(amount, currency_code)
    @amount = amount.to_f
    @currency_code = currency_code
  end

  def ==(other)
    self.amount == other.amount && self.currency_code == other.currency_code
  end

  def !=(other)
    self.amount != other.amount || self.currency_code != other.currency_code
  end

  def +(other)
    if @currency_code == other.currency_code
      added_amounts = @amount + other.amount
      return Currency.new(added_amounts, @currency_code)
    else
      raise DifferentCurrencyCodeError, "You can't do that. Those look like two different currency types."
    end
  end

  def -(other)
    if @currency_code == other.currency_code
      subtracted_amounts = @amount - other.amount
      return Currency.new(subtracted_amounts, @currency_code)
    else
      raise DifferentCurrencyCodeError, "You can't do that. Those look like two different currency types."
    end
  end

  def *(multiplier)
    if multiplier.is_a? Integer
      multiplied_amount = @amount * multiplier
      return Currency.new(multiplied_amount, @currency_code)
    else
      return false
    end
  end

end

class DifferentCurrencyCodeError < StandardError
end

lori = Currency.new(10.00, "€")
peter = Currency.new(2.00, "¥")
megan = Currency.new(5.00, "€")

# euro symbol = option + shift + 2
# yen = alt + y
