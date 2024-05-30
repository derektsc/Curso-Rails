#uma classe instanciada torna-se um objeto

#para instanciar uma classe voce pode fazer de 2 maneiras
    #por inferencia
        a = [61,92,37]
        puts a
    #declaração explicita
        b = Array.new
        b.push(53)
        puts b
        puts "-------"
        


#criando uma classe
    #sempre que for declarar uma classe ela deve iniciar com letra maiuscula
    class Pessoa
            
    end
    
    #ai em outro arquivo voce vai dar um require_relative, e colocar dentro de uma variavel
    require_relative "13_criar_classe_e_objeto.rb"
    #ISSO TUDO EM OUTRO ARQUIVO PARA PUXAR A CLASSE
    teste = Pessoa.new
    
#métodos (ações aquilo que a classe pode fazer)

#utilize def para definir e end para finalizar a ação

    class Pessoa2
        def falar
           "ola, pessoal" 
        end
    end
    
    
    p = Pessoa.new
    
    puts p.falar