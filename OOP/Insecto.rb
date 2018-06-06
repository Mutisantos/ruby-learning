#Herencia: reutilizar codigo de las cases padres
#La clase padre de todo es BasicObject

require './Animal' #Hacer referencia a otro archivo: ejecutará todo lo que haya en este archivo


# < Viene siendo el extends en ruby. No hay herencia multiple
class Insecto < Animal
      #Permite sobrecargar el permiso que se tiene sobre un atributo
      attr_accessor :reino
      
      #Permite sobrecargar los metodos de la clase padre
      def initialize(params)
        super(params)#Con solo super sabe que debe llamar el metodo actual pero de la clase padre
        @especie = 'Insecto'
      end

      def ataca()
         "Mucho daño del #{@especie + " " + @reino}"
      end

      #Sobrecargo el metodo de la clase padre
      def metodoProtegido1()
        puts super().reverse + ':Acabo de sobreescribir el metodo de la case padre'
      end
end

araña = Insecto.new({nombre:"Araña",edad:1})
puts araña.toString #La clase hija puede usar metodos publicos y protegidos de la padre
araña.reino = 'Extraterrestre' #Con la clase animal no se podría por el attr_reader
puts araña.ataca #Usa sus propios metodos
araña.metodoProtegido1()
