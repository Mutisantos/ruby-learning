# Convenciones https://github.com/rubocop-hq/ruby-style-guide
# Se busca reducir el numero de lineas de codigo y sentencias
# Tratar de facilitar la legibilidad de codigo: gem install rubocop

def saludo(nombre, apellido)
  puts "1.Hola, #{nombre + ' ' + apellido}"
  apellido + nombre
end

saludo('YO', 'mero')

#El rubocop señarlará todas las reglas que se violen en un codigo
# rubocop <archivo.rb>