# call in the two other files:
require_relative "currency.rb"
require_relative "currency_converter.rb"

# euro symbol = option + shift + 2
# yen = alt + y
# british pound = option + 3

# set account contents
# for modifying and saving to same variable:
# e = Currency.new()
# e.addition(e, whatever)

# for modifying and saving to a new variable, retaining previous values:
# new = Currency.new()
# new_updated = new.addition(e, whatever)
