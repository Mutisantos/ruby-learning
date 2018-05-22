a = [1,2,3,4,5,6]

puts a

puts a.include? 3 #Si el elemento existe en el arreglo

a.map { |i| i + 2} #Itera entre todos los elementos del arreglo y les hace una operación

a.map! { |i| i + 2} #El ! aplica los cambios

puts 4.even?

puts 5.even? #Metodo para revisar si un elemento par (o no)

puts a.map &(:even?) #Se llama un metodo que afectará a a cada uno de los elementos del arreglo

puts a.reduce(:+) #Tomar todos los elementos y aplicarle una operación al conjunto (1+2+3+4+5+6)

puts a.reduce(100, :+) #Se le puede dar un valor inicial

b = a.reduce do |first, second| #Al reduce se le pueden aplicar operaciones mas complejas como obtener el mayor
        if first > second
            first
        else
            second
        end
    end

puts b

#El select y el reject  sirven como medio de consulta de un conjunto

puts a.select {|i|i<6} #Seleccionar todos los elementos que SI cumplan con la condicion

a.select! {|i| i < 6} #Aplica los cambios del select al arreglo (EL ! aplica cambios permanentes)

puts a

a = [1,2,3,4,5,6]

puts "Reject"
puts a.reject {|i| i > 3} #Selecciona todos los elementos que NO cumplan con al condicion

puts "Drop While:"
puts a.drop_while {|i| i <= 3} #Similar a reject


#Any - All

puts a.any? {|i| i%3 == 0} #Valida que al menos 1 elemento cumpla con una condición

puts a.all? {|i| i%1 == 0} #valida que TODOS los elementos cumplan con la condición

# Operaciones de conjunto en arreglos

b = [3,4,5,6,7,8]

puts "Interseccion A n B"
puts a & b #La intersección de los dos arreglos

puts "Union A n B"
puts a | b #La union de los dos conjuntos

