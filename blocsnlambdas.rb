#BLOCKS: son tambien llamados metodos sin nombre: 
#Unidad de codigo que va entre corchetes que depende de otro metodo para funcionar
# O entre un do/end
def methodBloque(serie)
    serie.each{|ser| puts ser}#bloque            

    serie.each do |ser| 
        puts ser        #bloque
    end                 
    
end

def executeBlock(&block)
    if block_given?
       block.call
    else
       puts 'Falló'
    end
end

##YIELD
##Ejecuta un bloque como parametro sin necesidad de definirlo como argumento
def executeYield
    if block_given?
       yield
    else
       puts 'Falló'
    end
end

# Procs y Lambdas
# Metodos sin nombre que se asignan a una variable
# Ejecutarlos necesita llamar al método .call
# Un lambda hereda las propiedades de los procs
# Procs se usan con mayor frecuencia que los lambdas

saludar = lambda {puts 'Holaaaaaaaaaa'}
#Con argumentos se añaden pipes para pasarlos como parametros
saludarConArgumento = lambda {|argumento1, argumento2| puts argumento1 + "--" + argumento2 }

array = [1,2,3,4,5]
methodBloque(array)

executeBlock {puts array * '' 
              puts 'A'
              value = gets.chomp.to_i
              puts array.map {|i| i*value} * ','
            } #Se envia un bloque como parámetro

executeYield{puts array * '' 
              puts 'A'
              value = gets.chomp.to_i
              puts array.map {|i| i*value} * ','
            } #Se envia un bloque como parámetro

saludar.call 
saludarConArgumento.call("Yo","Mero")

