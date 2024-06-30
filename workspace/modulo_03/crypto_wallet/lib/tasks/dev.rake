namespace :dev do
  desc "configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando BD...", "Apagado com sucesso!") { %x(rails db:drop:_unsafe) }
      show_spinner("Criando BD...", "Criado com sucesso!") { %x(rails db:create) }
      show_spinner("Migrando...", "Migrado com sucesso!") { %x(rails db:migrate) }
      %x(rails dev:add_coins)
      %x(rails dev:add_mining_types)
      else
        puts "voce nao esta em ambiente de desenvolvimento"
      end
    end

  desc "cadastra as moedas"
  task add_coins: :environment do
    show_spinner("Cadastrando Moedas...", "Cadastrado com sucesso!") do
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
  end
end

  desc "cadastra tipo de mineração"
  task add_mining_types: :environment do
    show_spinner("Cadastrando tipos de mineração...", "Cadastrado com sucesso!") do
        mining_types = [
          {name: "Proof of Work", acronym: "PoW"},
          {name: "Proof of Stake", acronym: "PoS"},
          {name: "Proof of Capacity", acronym: "PoC"}
        ]

        mining_types.each do |mining_type|
          MiningType.find_or_create_by!(mining_type)
      end
    end
  end

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

private
  def show_spinner(msg_start, msg_end)
    spinner = TTY::Spinner.new("[:spinner]  #{msg_start}...")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end

end

