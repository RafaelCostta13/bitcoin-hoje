class Coin < ApplicationRecord
require 'net/http'
require 'json'


BASE_URL = "https://api.binance.com/api/v3/ticker/price"
	
	# Rota todos os preรงos
	# https://api.binance.com/api/v3/ticker/price

	# Rota apenas a moeda especificada
	# https://api.binance.com/api/v3/ticker/price?symbol=LTCBTC
	
	def get_coin(coin)
		coin = Coin.find_by(name: coin)

		uri = BASE_URL + "?symbol=#{coin.ticket_coin}"
		uri = URI(uri)

		consult_binance = Net::HTTP.get(uri)
		consult_binance = JSON.parse(consult_binance)
		
		coin.price = consult_binance['price']
		return coin
	end

end
