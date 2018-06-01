#Clase: Abstracción de objetos del mundo real que tienen atributos (caracteristicas) 
#y comportamientos (metodos)

#Todo objeto es instancia de una clase

class Animal
      
    #En el constructor se definen los atributos asignables por un hash
    def initialize(params)
        @nombre = params[:nombre]
        @especie = params[:especie]
        @edad = params[:edad]
        @reino = 'Animal' #valores por defecto
        @@variableDeClase = 1
    end

    #Equivale a un setter
    #El @ funciona como el this en java
    def nombre=(nombre)
        @nombre = nombre
    end

    
    def toString()
        "Me llamo #{@nombre} y tengo #{@edad} años"
    end
end



perru = Animal.new({})
perru.nombre = "Perro"
puts perru.toString


gatu = Animal.new({nombre:"Gato",edad:19})
puts gatu.toString