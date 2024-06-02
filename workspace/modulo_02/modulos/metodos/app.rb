require_relative 'pagamento.rb'

include Pagamento

puts "Digite a bandeira do cartão:"
band = gets.chomp

puts "Digite o numero do cartão:"
num = gets.chomp

puts "Digite o valor da compra:"
val = gets.chomp

puts pagar(band, num, val)
