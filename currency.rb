class Currency
attr_reader :amount, :currency_code
# should things be passed in here or no? Not sure about when to do that or not.
  def initialize(amount, currency_code)
    @amount = amount
    @currency_code = currency_code
  end

end
