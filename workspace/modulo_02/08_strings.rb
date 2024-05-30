x = "Derek"
y = 'rails'

puts x
puts x.class
puts y
puts y.class
puts "--------"
#Para concatenar strings vc pode usar + ou <<(shovel)

a = "curso"

b = "rails"

puts a + b

#quando utiliza << voce joga a variavel dentro da outra
puts b << a

puts "--"
#note que agora vai retornar railscurso somente na variavel b
puts b

#object_id identifica a variavel em memoria

puts x.object_id

#object_id vai alterar depois da concatenação pois aloca um novo espaço de memoria
#não é interessante utilizar o + pois se fizer um loop vai prejudicar a rapidez por conta da memoria

x = x + "rails"
puts x.object_id

#se voce utilizar << não vai ocupar um novo espaço de memoria, é mais recomendado.


#interpolação de variaveis

    # use a combinação de #{} para interpolar strings com variaveis ou código ruby
    
    nome = "derek"
    puts "seu nome é #{nome}"