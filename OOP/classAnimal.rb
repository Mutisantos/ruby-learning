#Clase: Abstracción de objetos del mundo real que tienen atributos (caracteristicas) 
#y comportamientos (metodos)

#Todo objeto es instancia de una clase

class Animal
      
    #Permisos de atributos (Evita crear gets y sets)
    attr_reader :reino #Solo lectura
    attr_writer :especie #Solo escritura
    attr_accessor :edad #Lectura y Escritura
    attr_accessor :variableDeClase
    attr_accessor :nombre
    #En el constructor se definen los atributos asignables por un hash
    def initialize(params)
       # El encapsulamiento permite proteger y delimitar los atributos de clase
       @nombre = params[:nombre] 
       @especie = params[:especie]
       @edad = params[:edad] 
       @reino = 'Animal' 
       @@variableDeClase = 0
    end

    #Por defecto todo es publico
    def metodoPublico ()
        "#{@@variableDeClase}:Soy un #{@reino}" 
    end

    def toString()
        metodoPrivado1()
        "#{@@variableDeClase}:Me llamo #{@nombre} y tengo #{@edad} años" 
    end

    #Usar self permite crear metodos estáticos, que no requieren de la existencia del objeto para ejecutarse
    def self.calculoEstatico(multi)
        @@variableDeClase * multi
    end
    #public end


    #Metodos protegidos son heredables
    protected #Todos los metodos despues de protected son protegidos
    def metodoProtegido1()

    end
    #protected end


    #Metodos solo accesibles dentro de la clase, no desde las instancias
    private #Todos los metodos debajo del private se vuelven private
    def metodoPrivado1()
        @@variableDeClase = @@variableDeClase + 1
    end
    #private end
end


gatu = Animal.new({nombre:"Gato",edad:19})
perru = Animal.new({nombre:"Perro",edad:1})
perru.nombre = "Perro"
puts perru.toString



gatu.especie = 'Felino' #El attr_writer hace un Set al hacer cualquier asignación al atributo
gatu.edad = 10
puts gatu.nombre + " " + gatu.reino + " " + gatu.edad.to_s 
puts gatu.toString
puts Animal.calculoEstatico(100)


