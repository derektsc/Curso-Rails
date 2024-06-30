namespace :dev do
  desc "configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando BD...", "Apagado com sucesso!") { %x(rails db:drop:_unsafe) }

      show_spinner("Criando BD...", "Criado com sucesso!") do
        %x(rails db:create)
      end
      
      show_spinner("Migrando...", "Migrado com sucesso!") do
        %x(rails db:migrate)
      end

      show_spinner("Populando...", "Populado com sucesso!") do
        puts %x(rails db:seed)
      end

    else
      puts "voce nao esta em ambiente de desenvolvimento"
    end
  end

private
  def show_spinner(msg_start, msg_end)
    spinner = TTY::Spinner.new("[:spinner]  #{msg_start}...")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end

end
