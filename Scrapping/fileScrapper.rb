#Hacer scrapping y descargar las imagenes de un blog de tumblr

#gem install nokogiri => Scrapping
require 'nokogiri'
#Libreria de Ruby => abrir urls 
require 'open-uri'
#Manejo de certificados SSL para los certificados en HTTPS
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

url = 'http://muti-santos.tumblr.com/page/'
document = nil
contador = 1
filecounter = 0
limit = gets.chomp.to_i

begin
    puts "Pagina: #{contador}"
    begin
        document = Nokogiri::HTML(open(url + contador.to_s + '/'))
    rescue OpenURI::HTTPError => e
        document = nil
    end
    #Obtener el contenedor de posts (un tag ul cuya clase sea posts)
    div_main = document.css('ul.posts')
    #Obtener tdos los posts individuales
    div_main.css('li.post').each do |post|
      posts_url = post.css('img')      
      if(posts_url != nil && !posts_url.empty?)
        posts_url.each do |post_url| #En un solo post pueden haber muchas imagenes
          img_url = post_url.attr('src')
          puts img_url
          title = img_url.to_s.split('/').last
          open(img_url, 'r') do |img| #abrir la URL de la imagen
            File.open("gifs/#{title}", 'wb') do |new_file| #crear un nuevo archivo que se vaya construyendo con lo que se lea de la imagen
                new_file.puts img.read
            end
          end
        end
      end
    end
    contador+=1
end until contador > limit #document.nil?








