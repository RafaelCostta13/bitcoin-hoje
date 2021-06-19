# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	Coin.create!(ticket_coin: 'DOGEUSDT', 
							 name: 'dogecoin',
							 description: 'Bitcoin é uma criptomoeda descentralizada, sendo um dinheiro eletrônico para transações ponto-a-ponto. O primeiro artigo descrevendo uma implementação do Bitcoin foi apresentado em 2007 na lista de discussão The Cryptography Mailing por um programador ou grupo de programadores sob o pseudônimo Satoshi Nakamoto.',
							 path_img: '/public/img/dogecoin.png')
