#representando uma classe visualmente

#notação UML (Unifined Module Language)


    class Pessoa
        attr_accessor :nome, :email
        
        def falar(texto)
            texto
        end
        
        def gritar(texto)
            "#{texto}!@!!!!"
        end
    end

#Heranças entre classes

# Exemplo pessoa fisica e pessoa juridica herdam caracteristicas de "pessoas"

    class PessoaFisica < Pessoa #automaticamente ja tem nome e email aqui
        attr_accessor :cpf
        
        def falar(texto)
            texto
        end
    end
    
    class PessoaJuridica < Pessoa #automaticamente ja tem nome e email aqui
        attr_accessor :cnpj
        
        def pagar_fornecedor
            "pagando fornecedor"
        end
    end
    
    puts "PESSOA 1"
    p1 = Pessoa.new
    puts p1.nome = "derek"
    puts p1.email = "derek@derek.com"
    puts "------------------"
    
    puts "PESSOA 2"
    p2 = PessoaFisica.new
    puts p2.nome = "joao"
    puts p2.email = "joao@joao.com"
    puts p2.cpf = "1234123124"
    puts p2.falar("hello")
    puts "-----------------"
    
    puts "PESSOA 3"
    p3 = PessoaJuridica.new
    puts p3.nome = "marcio"
    puts p3.email = "marcio@marcio.com"
    puts p3.cnpj = "31234123"
    puts p3.pagar_fornecedor