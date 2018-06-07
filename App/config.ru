#gem install rack
#La gema permite hacer apps web sencillas
#rackup  config.ru

#Llamada al servidor recibe env y responde con HTTP 
run Proc.new { |env| [200, {}, ['<h1>Hola Mundo HTTP</h1>']] } 

