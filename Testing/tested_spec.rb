#Archivo que va a ser usado para probar a tested.rb
#https://www.anchor.com.au/wp-content/uploads/rspec_cheatsheet_attributed.pdf

require_relative './tested'


RSpec.describe 'hola mondo' do
#Bloque de testing
    it 'Llamar Hola Mundo' do
        #Esperar que el resultado del metodo hola_mondo sea =equals= a la cadena 
        expect(hola_mondo).to eq 'Hola Mondou.'
    end
    it 'Llamar Hola Mundo Mal' do
        #Esperar que el resultado del metodo hola_mondo sea =equals= a la cadena 
        expect(hola_mondo).not_to eq 'Hola Mundo'
    end
    
end



#Probar con el comando rspec tested_spec.rb