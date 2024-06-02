require_relative 'pagamento'

include Pagamento

p1 = Visa.new
puts p1.pagando