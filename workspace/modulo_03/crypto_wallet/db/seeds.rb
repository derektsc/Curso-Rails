# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

spinner = TTY::Spinner.new("[:spinner] Cadastrando Moedas...")
spinner.auto_spin


coins = [
    {description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://icons.iconarchive.com/icons/froyoshark/enkel/512/Bitcoin-icon.png"},

    {description: "Ethereum",
    acronym: "ETH",
    url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Ethereum-icon-purple.svg/512px-Ethereum-icon-purple.svg.png"},

    {description: "Dash",
    acronym: "DASH",
    url_image: "https://cdn4.iconfinder.com/data/icons/crypto-currency-and-coin-2/256/dash_dashcoin-512.png"},

    {description: "coin teste",
    acronym: "test",
    url_image: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/testing-logo-design-template-ce84480d61b3db9a8e1522a99875832f_screen.jpg?ts=1615794516"}
]

coins.each do |coin|
    sleep(1)
    Coin.find_or_create_by!(coin)
end

spinner.success("(Concluido!)")

=begin esse codigo esta refatorado acima
Coin.create!(
    [
        {description: "Bitcoin",
        acronym: "BTC",
        url_image: "https://icons.iconarchive.com/icons/froyoshark/enkel/512/Bitcoin-icon.png"},

        {description: "Ethereum",
        acronym: "ETH",
        url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Ethereum-icon-purple.svg/512px-Ethereum-icon-purple.svg.png"},

        {description: "Dash",
        acronym: "DASH",
        url_image: "https://cdn4.iconfinder.com/data/icons/crypto-currency-and-coin-2/256/dash_dashcoin-512.png"},

        {description: "coin teste",
        acronym: "test",
        url_image: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/testing-logo-design-template-ce84480d61b3db9a8e1522a99875832f_screen.jpg?ts=1615794516"}
    ]
)
=end

