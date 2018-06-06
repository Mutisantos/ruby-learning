#Mixins: mezcla entre modulos y clases, es una clase que puede implementar modulos 


module Conversion
    def palabra()
        return "uno" if @valor == 1
        return "muchos"
    end
end

module Tasas
    def tasa (rate)
        return @valor.to_f * rate
    end
end

class Numero
    include Conversion #Llamar un módulo desde una clase
                       #Permite simular herencia multiple al permitir el uso de todos los metodos del modulo
    attr_accessor :valor
end

num = Numero.new
num.valor = 1
puts num.palabra()

num.extend(Tasas) #Usar un módulo en una instancia de clase
puts num.tasa(0.32)