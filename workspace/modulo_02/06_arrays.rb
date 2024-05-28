# para utilizar o array tem 2 formas, colocar em uma variavel direto os valores,
# ou instanciar um array vazio e fica dando push para colcoar os valores.
# para o array vazio voce pode usar "v = Array.new ou v = []"

v = [1,3,5,6,7,9]

v.each do |item|
    puts item    
end

#############
v2 = Array.new

v2.push(2)
v2.push(13)
v2.push(400)
v2.push('derek')

v2.each do |item2|
    puts item2
end

##################
v3 = []

v3.push('legal')

v3.each do |item3|
    puts item3
end

###################

# Vetor é uma variavel que tem varias posições iniciando no indice [0]
puts 'esse é o segundo elemento do vetor V: ' + v[2].to_s

# uma string é um vetor também
string = "Derek"

puts string[0]
#vai printar D pois é o indice [0]


# No ruby, os arrays são dinamicos e aceitam armazenar tipos diferentes de dados
#voce pode ter arrays aninhados, exemplo

v4 = [[11,12,13], [21,22,23], [31,32,33]]

v4.each do |externo|
    externo.each do |interno|
        puts interno
    end
end

puts '---------------------'

puts v4[0]
puts v4[2]




