#métodos de instancias
#só podem ser invocados a aprtir de um objeto, ou seja uma classe instanciada

    class Pessoa
        attr_accessor :nome, :email
        
        def falar(texto = "ola pessoal") #método de instancia
            texto
        end
    end
    
    p1 = Pessoa.new #instanciando a classe e gerando objeto p1
    puts p1.falar()
    

#métodos de classe
#são métodos que podem ser executados a partir da própria classe (self.), ou seja não é necessario instanciar um objeto
    
    class Pessoa2
        attr_accessor :nome, :email
        
        def falar(texto)
            texto
        end
        
        def self.gritar(texto)
            "#{texto}!!!!!"
        end
    end
    
    
    puts Pessoa2.gritar("ola")
    
    