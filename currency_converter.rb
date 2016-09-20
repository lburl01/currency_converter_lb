require_relative "currency.rb"

# gets each conversion number without having to loop
conversion_rates = {
  USD: {
    EUR: 0.894726,
    JPN: 101.818
  },
  EUR: {
    USD: 1.11789,
    JPN: 113.774
  },
  JPN: {
    USD: 0.00982184,
    EUR: 0.00879
  }
}

# for money that is in dollars,
two_currency_codes = {
  "USD": {
    "EUR": 0.89,
    "USD": 1.0
  },
  "EUR": {
    "USD": 1.11789,
    "EUR": 1.0
  }
}

# At first, just make this work with two currency codes and conversation rates, with one rate being 1.0 and the other being the conversation rate. An example would be this: {'USD': 1.0, 'EUR': 0.74}, which implies that a dollar is worth 0.74 euros.

# Must be able to take a Currency object and a requested currency code that is the same currency code as the Currency object's and return a Currency object equal to the one passed in. That is, currency_converter.convert(Currency(1, 'USD'), 'USD') == Currency(1, 'USD').

class CurrencyConverter

# Must be initialized with a dictionary of currency codes to conversion rates
  def initialize(currency_codes_to_conversion_rates)
    @conversion_rates = currency_codes_to_conversion_rates
  end

  def conversion_rates
    @conversion_rates
  end

# kept getting a NoMethodError: undefined method `[]' for nil:NilClass on @conversion_rates here...not sure why?
  # def convert(currency_object, desired_currency_code)
  #   new_amount = currency_object.amount * @conversion_rates[currency_object.currency_code][desired_currency_code]
  #   return Currency.new(new_amount, currency_code)
  # end

  def convert(currency_object, desired_currency_code)
    from_hash = self.conversion_rates[currency_object.currency_code]
    puts "#{from_hash}"
    puts "#{desired_currency_code}"
    exchange_rate = from_hash[desired_currency_code]
    new_amount = currency_object.amount * exchange_rate
    return Currency.new(new_amount, desired_currency_code)
  end

# => conversion_rates[input_code.to_sym][output_code.to_sym]
# Therefore, when do we use a string versus a symbol?
#   If the contents (the sequence of characters) of the object are important, use a string
#   If the identity of the object is important, use a symbol
# Symbols don't contain values or objects, like variables do. Instead, they're used as a consistent name within code.


end
