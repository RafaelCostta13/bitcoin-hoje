class CoinsController < ApplicationController
	layout 'application'

	def index
		coin = Coin.new
		@data = coin.get_coin(params[:ticket_coin])
	end
end
