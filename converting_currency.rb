# call in the two other files:
require_relative "currency.rb"
require_relative "currency_converter.rb"

# set account contents
e = Currency.new()
e.addition(e, whatever)

new = Currency.new()
new_updated = new.addition(e, whatever)

def DifferentCurrencyCodeError
  raise "You can't do that. Those are two different currency types."
end
