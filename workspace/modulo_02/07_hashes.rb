#Em hash voce determina qual é a "chave" para acessar o valor, exemplo

#15 | "rails" | 1997 | 32 (aqui são os valores)

#"x"| "curso" | "ano"| 1  (aqui esta determinando o indice "chaves")

#Criando Hashes:
    #Tradicional
        h = {"x" => 15, "curso" => "rails"}
        
    #Versão ruby 1.9+
        u = {numero: 17, curso2: "rails ruby"}
        
#Para acessar os elemntos, use os []
    
    puts h["curso"]
    
    teste = u[:numero]
    
    puts teste