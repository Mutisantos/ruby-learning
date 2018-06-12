#Fibonacci

def serieFibbonacci(n)
    serie = [1,2]
    (n-2).times { #Ejecutar el código entre corchetes n-2 veces (Ciclo basado en repetición)
        serie << serie[-1] + serie [-2]#Concateno 
    }
    return serie
end

def imparesArreglo(serie)
    oddserie = Array.new
    serie.each do |element|
        oddserie << element if (element % 2 != 0 && element) #Condiciona la operacion solo si el elemento es impar
                                                  #Casi como un if inline
    end
    return oddserie
end

def imparesArreglo_menor40(serie)
    oddserie = Array.new
    serie.each do |element|
        oddserie << element if (element % 2 != 0 && element < 40) #Condiciona la operacion solo si el elemento es impar
                                                  #Casi como un if inline
    end
    return oddserie
end

puts 'Ingrese la cantidad de numeros de la serie a ver'
secuencia = gets.chomp.to_i
fibSerie =  serieFibbonacci(secuencia)
puts 'Fibonaccis:'+fibSerie * ','
fibImpares = imparesArreglo_menor40(fibSerie)
puts 'Impares:' + fibImpares * ','
puts "Sumatoria: #{fibImpares.reduce(:+).to_s}"


