require_relative 'pagamento.rb' #buscando o método em outro arquivo

include Pagamento #se eu não faço o include sou obrigado a colocar Pagamento::PI 

#puts Pagamento::PI
puts PI #para fazer isso necessita do include