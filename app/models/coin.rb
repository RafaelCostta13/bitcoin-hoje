class Coin < ApplicationRecord
require 'net/http'
require 'json'

	# Rota todos os preรงos
	# https://api.binance.com/api/v3/ticker/price

	# Rota apenas a moeda especificada
	# https://api.binance.com/api/v3/ticker/price?symbol=LTCBTC

BASE_URL = "https://api.binance.com/api/v3/ticker/price"
	
	
	def get_coin(coin)
		coin = Coin.find_by(name: coin)
		coin.price = consult_api_binance(coin.ticket_coin) if coin.present? 
		return coin
	end

	def consult_api_binance(ticket_coin)
		uri = BASE_URL + "?symbol=#{ticket_coin}"
		uri = URI(uri)
		consult_binance = Net::HTTP.get(uri)	
		price = set_price_coin(consult_binance)
	end

	def set_price_coin(consult_binance)
		consult_binance = JSON.parse(consult_binance)
		consult_binance['price']
	end
end