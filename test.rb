
def funcionMatematica (operando1, operando2) 
    puts "Suma: #{operando1.to_i + operando2.to_i}" #Entero
    puts "Resta: #{operando1.to_i - operando2.to_i}"
    puts "*: #{operando1.to_i * operando2.to_i}"
    puts "/: #{operando1.to_f / operando2.to_f}" #Flotante en lugar de entero
    puts "Pow: #{operando1.to_i ** operando2.to_i}"
    puts 'Encadenado: ' + operando1.to_s + ' \+ ' + operando2.to_s #Cadena de caracteres
    puts 'Prints sin operaciones internas va en comilla simple \'\' '

end

def crearArreglos
    ## Todos los arreglos pueden almacenar cualquier tipo de dato
    a = Array.new #Arreglo Vacío
    b = Array.new(10) #Arreglo con 10 espacios reservados pero vacíos
    c = Array.new(5,1)#Arreglo con 5 espacios, cada uno con valor 1
    d = Array(1...5) #Arreglo con una sucesión de 1 a 5
    e = [0,1,2,3,4,5] #Arreglo inicializado con sus elementos

    ## Añadir objetos
    a.push(1) #añadir un elemento al final
    a << 2 #igual que push
    a.unshift(0) #añadir un elemento al inicio
    a.insert(2, 1.5) #Los indices funcionan igual que en C o Java
    a.insert(2, 1.5) 
    a.insert(2, 1.5) 
    a.insert(2, 1.5) 
    
    ## Eliminar objetos
    a.pop() #elimina el elemento al final
    a.shift() #elimina el primer elemento
    a.delete_at(0) #elimina el elemento en el indice dado
    a.delete(1.5) #elimina TODAS las ocurrencias del elemento dado
    a = [1,1,3,2,31,31,1,2,3,1,2,2,3,1,2,1]
    f = a.uniq() #Retorna un arreglo sin elementos repetidos
    a.uniq!() #Elimina todos los elementos repetidos del arreglo (!warning)

    #Obtener elementos
    puts e[0] #Por el indice
    puts e[-5] #Por el indice hacia atrás
    puts e[1..4] #Obtener varios elementos con un rango
    puts e.first
    puts e.last
    puts.take(2)  #Obtener los primeros dos elementos
    puts.drop(2)  #Obtener todos los elementos menos los dos primeros

end    

#Funcion de saludo y arreglos
def saludoEach (valor, arreglo)
    cadena = "-Hola Each:" + valor
    arreglo.each do |elem|
        cadena = cadena + elem.to_s
    end
    return cadena
end

#Funcion de saludo y arreglos
def saludoFor (valor, arreglo)
    cadena = "-Hola For:" + valor
    for elem in arreglo
        cadena = cadena + elem.to_s
    end
    return cadena
end



puts "nombre ñor:"
name = gets.chomp
arreglo = Array.new [1,2,3,4,5,6,'AAA']
valor = saludoEach(name, arreglo)
puts valor
valor = saludoFor(name, arreglo)
puts valor
