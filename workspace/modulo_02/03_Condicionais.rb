# IF
puts "digite um numero: "
numero = gets.chomp.to_i
if numero > 2
    puts "o numero é maior do que 2, o número é: #{numero}"
end


#Unless

puts "digite outro número: "
numero2 = gets.chomp.to_i
unless numero2 >= 5
    puts "O segundo número digitado é menor que 5"
else
    puts "O segundo número digitado é maior que 5"
end

puts "Qual sua idade?"
idade = gets.chomp.to_i
case idade
    when 0..2
        puts "Voce ainda é um bebe"
    when 3..12
        puts "voce é uma criança"
    when 13 .. 18
        puts "voce é um adolescente"
    else
        puts "voce ja é adulto"
end

sexo = "M"

puts (sexo == "M" ? "Masculino" : "Feminino")
        