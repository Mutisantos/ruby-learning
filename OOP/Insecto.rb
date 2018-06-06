#Herencia: reutilizar codigo de las cases padres
#La clase padre de todo es BasicObject

require './Animal'


# < Viene siendo el extends en ruby
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
    
end

araña = Insecto.new({nombre:"Araña",edad:1})
puts araña.toString #La clase hija puede usar metodos publicos y protegidos de la padre
araña.reino = 'Extraterrestre' #Con la clase animal no se podría por el attr_reader
puts araña.ataca #Usa sus propios metodos