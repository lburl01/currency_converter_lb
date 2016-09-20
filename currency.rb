
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
      multiplied_amount = @amount * multiplier
      return Currency.new(multiplied_amount, @currency_code)
  end

  def get_currency_code(input)
    if input[0] == '$'
      @currency_code = 'USD'
      @amount = value[1..-1].to_f
    elsif input[0] == '€'
      @currency_code = 'EUR'
      @amount = value[1..-1].to_f
    elsif input[0] == '¥'
      @currency_code = 'JPY'
      @amount = value[1..-1].to_f
    else
      puts "Wrong currency type. Try using $, € (option + shift + 2), or ¥ (option + Y)"
    end
  end

end

class DifferentCurrencyCodeError < StandardError
end

lori = Currency.new(10.00, "€")
peter = Currency.new(2.00, "¥")
megan = Currency.new(5.00, "€")
