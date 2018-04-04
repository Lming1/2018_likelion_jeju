require 'eu_central_bank'

# 환율 정보

bank = EuCentralBank.new

bank.update_rates

puts bank.exchange(100, "USD", "KRW") # Money.new(80, "USD")
