#gem install rack
#Las gemas permite hacer apps web 
#gem install httparty https://www.rubydoc.info/github/jnunemaker/httparty
#Consumidor de API REST
#rackup  config.ru

#Libreria que permite embeber codigo ruby en html
require 'erb'
require 'httparty'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE


class Application
    def self.call(env) 
      @mensaje = 'Hola Mundo'
      if env['PATH_INFO'] == '/' #Con el path info permite enrutar 
        body = ERB.new(File.open('index.html.erb').read)
        #Consume el API REST mediante un HTTP-GET de la url 
        response = HTTParty.get('https://jsonplaceholder.typicode.com/posts')
        @posts = JSON.parse(response.body)
        [200, {}, [body.result(binding)]] #Se le pasa toda una pagina web 
      else
        [404, {}, ['<h1>El auto no está disponible</h1>']] 
      end
    end
end



#Llamada al servidor recibe env y responde con HTTP 
run Application #El self.call es el Proc que usa para ejecutarse

