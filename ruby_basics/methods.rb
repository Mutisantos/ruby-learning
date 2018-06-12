def metodosinargumento
    puts 'sin argumento. Se acabó'
end

def saludo (nombre, apellido)
    puts "1.Hola, #{nombre+" "+apellido}"
    return apellido
end

def saludoMultiple (*args)
    puts "2. Hola, #{args[0]+" "+args[1]}"#Se asume que el arreglo tiene todos los argumentos
end


def saludoDefault(nombre='Marciano', apellido='De la Colina', valor)#Argumentos con valor por defecto
    puts "3. Hola, #{nombre+" "+apellido+" "+valor.to_s}"
end


def saludoHash (diccionario)
    puts "4. Hola, #{diccionario[:nombre]+" "+diccionario[:nombre]}"
    '++++++++'+diccionario[:nombre]+" "+diccionario[:nombre]
    #Sin el uso de return, el retorno es la ultima linea del método
end

#Main
opcion = 1
while (opcion != 0)
    opcion = gets.chomp.to_i
    if(opcion == 0)
        metodosinargumento
    end

    if(opcion == 1)
        nombre = gets.chomp
        apellido = gets.chomp
        saludo(nombre,apellido)
    end

    if(opcion == 2)
        nombre = gets.chomp
        apellido = gets.chomp
        saludoMultiple(nombre,apellido) 
    end

    if(opcion == 3)
        nombre = gets.chomp
        apellido = gets.chomp
        if(nombre.empty? && apellido.empty?)
            saludoDefault(1) 
        elsif (!nombre.empty? && apellido.empty?)
            saludoDefault(nombre,1)
        else
            saludoDefault(nombre, apellido,1) 
        end
    end

    if(opcion == 4)
        nombre = gets.chomp
        apellido = gets.chomp
        #Los hash funcionan como diccionario/mapa pero soportan diferentes tipos de datos
        hash = {'nombre':nombre, 'apellido':apellido, 'edad':20}
        puts hash[:nombre]#Se necesitan : para obtener la llave con ese nombre
        puts saludoHash(hash)
    end
end

