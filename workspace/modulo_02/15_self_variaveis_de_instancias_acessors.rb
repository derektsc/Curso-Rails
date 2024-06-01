#Self

#o proprio objeto instanciado
    class Pessoa
        def falar
            "ola, pessoal"
        end
        
        def meu_id
            "meu id é o #{self.object_id}" #pegue o proprio objeto e mostre o id dele
        end
    end
    
    p1 = Pessoa.new
    puts p1.meu_id
    
    p2 = Pessoa.new
    puts p2.meu_id
    #são objetos diferentes entao vai retornar ids diferentes
    
    #voce também pode reabrir classes no ruby e usar o self:
    
        class String #classe que representa os caracteres
            def inverter
                self.reverse
            end
        end
        
        puts "derek".inverter
        
        
#variaveis de instancias

#são variaveis que existem apenas na instancia do objeto (em todo objeto), ou seja
#cada objeto possui seus proprios valores em tais variaveis

#as variaveis de instancia são precedidas de um @:
    
    class Pessoa2
        def falar
            "IAE, PESSOAAAAL"
        end
        def initialize (nome_fornecido = "indigente")
            @nome = nome_fornecido
        end
        def imprimir_nome
            @nome
        end
    end
    
    p2 = Pessoa2.new
    puts p2.imprimir_nome
    
    p3 = Pessoa2.new ("derek")
    puts p3.imprimir_nome
    
    # o @nome fica disponivel para uso em toda a classe


#ACESSORS

#Servem como atalhois para a declaração de atributos de uma classe. Exemplo:

    # attr_accessor :nome
    
# a simples declaração acima te dá um "getter" e um "setter" para nome na classe em questão

    class Pessoa3
        attr_accessor :nome
    
    end
    
    p4 = Pessoa3.new
    p4.nome = 'derekasdasd'
    puts p4.nome
    