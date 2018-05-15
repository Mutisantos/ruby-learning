a = [1,2,3,4,5,6]

puts a.include? 3 #Si el elemento existe en el arreglo

a.map { |i| i + 2} #Itera entre todos los elementos del arreglo y les hace una operación

a.map! { |i| i + 2} #El ! aplica los cambios

puts 4.even?

puts 5.even? #Metodo para revisar si un elemento par (o no)

puts a.map &(:even?) #Se llama un metodo que afectará a a cada uno de los elementos del arreglo



