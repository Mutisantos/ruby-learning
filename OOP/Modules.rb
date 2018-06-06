#Los modulos agrupan clases para simular herencia multiple
#Funcionan como namespaces que agrupan muchas clases y utilizarlas al tiempo

module Area #Los modulos alislan clases de mismo nombre con respecto a otras
    PI = 3.141592
    class Circulo
        def self.circulo(radio)
            PI * radio
        end
    end
    #El metodo de modulo debe definirse similar al self pero con su nombre propio
    def Area.cuadrado(lado)
        lado * lado
    end
end


module Perimetro #Los modulos alislan clases de mismo nombre con respecto a otras
    PI = 3.141592
    class Circulo
        def self.circulo(radio)
            PI * radio * 2
        end
    end
end

puts Area::PI #Acceder variables(no atributos) dentro de un modulo/clase

puts Area::Circulo.circulo(3)
puts Perimetro::Circulo.circulo(3)










