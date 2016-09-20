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

class CurrencyConverter

# Must be initialized with a dictionary of currency codes to conversion rates
  def initialize(currency_codes_to_conversion_rates)
    @conversion_rates = currency_codes_to_conversion_rates
  end

  def get_conversion_rate(from_code, to_code)

  end


# => conversion_rates[input_code.to_sym][output_code.to_sym]
# Therefore, when do we use a string versus a symbol?
#   If the contents (the sequence of characters) of the object are important, use a string
#   If the identity of the object is important, use a symbol
# Symbols don't contain values or objects, like variables do. Instead, they're used as a consistent name within code.


end
