#para falar de bundle precisamos entender o que é dependencias
#o que sao dependencias?
#algumas gems precisam de outras gems para funcionar corretamente
#muitas vezes voce tem um projeto q utiliza muitas gems e elas tem dependencias

#o bundler é uma gem que ajuda a "acabar" com essas dependencias

#como funciona?
    #crie um arquivo Gemfile
    
    #adicione um repositorio
       # source 'https://rubygems.org'
       
    #adicione as gems que deseja instalar no gemfile
        #gem 'lerolero'
        #gem 'cpf_utils'

#quando rodarmos o bundle install vai instalar todas as gems dentro do Gemfile
#ai caso a gema dependa de outra o bundle install ja instala automaticamente

#e cria um arquivo Gemfile.lock, mostra as versões de cada gema instalada

#exemplo na pasta bundlerr