puts "digite seu nome: "
nome = gets
puts "O seu nome é: #{nome}"

puts "=========================="

puts nome.inspect


puts "digite seu salario: "
sal = gets.chomp.to_f

puts "seu salario atualizado é: #{sal * 1.10}"