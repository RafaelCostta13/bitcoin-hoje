class ConvertPrice < ApplicationRecord

require 'net/http'
require 'json'

BASE_URL_AWESOME = 'https://economia.awesomeapi.com.br/json/daily/USD-BRL'

# Api valor do real em relação ao dólar
# https://economia.awesomeapi.com.br/json/daily/USD-BRL

	def dolar_for_real(price)
		consult_awesome = Net::HTTP.get(URI(BASE_URL_AWESOME))
		real = JSON.parse(consult_awesome)
		t = real[0]['low'].to_f
		return t
	end
end
