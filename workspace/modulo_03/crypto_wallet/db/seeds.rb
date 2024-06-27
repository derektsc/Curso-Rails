# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "cadastrando as moedas"

Coin.create!(
    description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://static.vecteezy.com/system/resources/previews/019/767/927/non_2x/bitcoin-logo-bitcoin-icon-transparent-free-png.png"
)

Coin.create!(
    description: "TESTE",
    acronym: "TEST",
    url_image: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/testing-logo-design-template-ce84480d61b3db9a8e1522a99875832f_screen.jpg?ts=1615794516"
)

puts "moedas cadastradas"