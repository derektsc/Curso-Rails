#Simbolos são strings imutaveis

    puts "derek".object_id
    puts "derek".object_id
    puts "derek".object_id
    puts "derek".object_id
    puts "derek".object_id #cada string de objeto foi armazenado em um local diferente
                           #porem tem o mesmo valor o texto seria melhor utilizar simbolos
    
    puts "================="
    
    puts :derek.object_id
    puts :derek.object_id
    puts :derek.object_id
    puts :derek.object_id
    puts :derek.object_id   #todos aqui vão utilziar o mesmo endereço de memoria
    
    puts "============"

#simbolos são muito usados em situações onde precisamos de um identificador pois eles garantem que seu
# uso não implicara na criação de novos objetos sempre que usados.


#HASHES adoram símbolos

    h = { :curso => "rails"}
    
    puts h.class
    