$alcanceGlobal = 3 #Las variables globales se preceden de un $ siempre
#Asignable dentro de cualquier metodo o clase y funcionaría igual
alcanceExterno = 2 #Las variables locales no requieren de nada 

CONSTANTE_NUMERICA = 10 #Las constantes siempre van en mayuscula

#-------------------------------------------------
class Animal

 def initialize(params)
      @nombre = params[:nombre]
      @especie = params[:especie]
      @edad = params[:edad] #vVariable de instancia
      @reino = 'Animal' 
      @@variableDeClase = 1 #Variable Estática
  end

  def nombre=(nombre)
      @nombre = nombre
  end

  def modificarVarEstatica (value)
      @@variableDeClase += value.to_i
      puts defined? @@variableDeClase
      puts defined? @edad
  end
  
  def toString()
      "Me llamo #{@nombre} y tengo #{@edad} años. Variable #{@@variableDeClase}"
  end
end
#_-----------------------------------------------



def scopeLocal ()
    alcanceLocal = 1 #camelcase
    puts defined? alcanceLocal
    puts defined? $alcanceGlobal
    puts defined? CONSTANTE_NUMERICA
end


def scopeInstance() #Dura tanto como dure el objeto que la contenga
    gatu = Animal.new({nombre:"Gato",edad:19})
    perru = Animal.new({nombre:"Perro",edad:9})
    gatu.modificarVarEstatica (10)
    perru.modificarVarEstatica (22)
    #Los dos objetos comparten la variable de clase (estática)
    puts perru.toString
    puts gatu.toString
end

scopeLocal()
scopeInstance()