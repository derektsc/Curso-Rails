#Parametros  são a forma de passar dados para dentro do método

#na frente do método voce coloca o parametro

    class Pessoa
        def falar(texto)
            "ola, #{texto}"
        end
    end
    
    
    p = Pessoa.new
    puts p.falar('derek') #se eu nao informo nenhum valor da erro


#voce poide usar um valor padrao para isso exemplo

    class Pessoa2
        def conversar(nome = "fulano")
            "ola, #{nome}"
        end
    end
    
    n = Pessoa2.new
    puts n.conversar
    
#da para usar mais de um parametro também
puts "--------------------------------------"
    class PersonagemPrincipal
        def initialize
            puts "inicializando personagem principal"
        end
    
        def talk(texto1 = "Ola", texto2 = "Hello!")
            "#{texto1} - #{texto2}"
        end
           
        def talk2 (nome = "Ciclano")
            "Ola, #{nome}" 
        end
           
        def talk3 (texto = "ola pessoal")
            texto
        end
    end
    
    nimbus = PersonagemPrincipal.new
    
    puts nimbus.talk("ola, me chamo nimbus","sou personagem principal")
    puts nimbus.talk2(2)
    puts nimbus.talk3
    puts "----"
    
    
    
#método initialize
# o método initialize é um método especial que serve para indicarmos o que a
#classe deve fazer ao ser instanciada/inicializada.


    class PersonagemSecundario
        
        def talk (apresentacao = "Ola, sou o personagem secundario")
            apresentacao
        end
        def initialize
            puts "inicializando...personagem secundario"
        end
    end

    mork = PersonagemSecundario.new  #isso aqui executa o def initialize
    puts mork.talk()
    puts "----------"
    
    
    
#da para utilizar parametros na inicialização utilizando o .times

    class Npc
        def initialize(cont = 5)
            cont.times do |i|
                puts "contando... #{i}"
            end
        end
        def loja (texto = "ola, bem vindo a loja, sou o npc de vendas")
            texto
        end
        def vender (texto = "qual item deseja vender?" )
            texto
        end
    end
    
    npc = Npc.new(2) #aqui posso definir quantas vezes vai contar, ao inves de 5 defini para 2
    puts npc.loja
    puts npc.vender
    
    
    
