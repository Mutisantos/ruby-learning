#Web Scrapping: Excarvar una pagina/aplicacion web y obtener su información
#Utilizado para jalar informacion de varias webs y analizar sus datos para
# marketing, comparacion de precios y analisis de mercados.

#gem install nokogiri => Scrapping
require 'nokogiri'
#Libreria de Ruby => abrir urls 
require 'open-uri'
#Manejo de certificados SSL para los certificados en HTTPS
require 'openssl'


OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
url = 'https://materializecss.com/'
document = Nokogiri::HTML(open(url)) 
main = document.css('main') #Filtrar el html usando clases y ids de css
main.css('a').each do |link| #Se pueden filtrar mas veces como en este caso que se sacan todos tags a del main
    result = link.text + ':' #con .text se obtiene lo que está entre los tags
    result += link.attr('href') #con attr obtengo cualquiera de los atributos del tag html
    puts result
end
