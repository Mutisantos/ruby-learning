#Excepciones 

#Raise - Equivale al throws

def porcentaje (base,total)
    #Con if o con unless se chequea el cumplimiento de la condicion de la excepción
    raise TypeError, "El primer argumento es invalido" unless base.is_a? Numeric
    if !total.is_a? Numeric
        raise TypeError, "El segundo argumento es invalido" 
    end
    (base*100.0) / total
end


#Begin/Rescue/End - Equivale al try/catch
#Ensure: Equivale al finally

def rescatista(a,b)
    begin #Try
        c = porcentaje(a,b)
    rescue => error #Catch
        puts "Error de tipo:" + error.message
    else #Si no ocurre un rescue
        puts c
    ensure #Se ejecuta sin importar el resultado
        puts porcentaje(a.to_f, b.to_f)
    end
end





a = gets.chomp
b = gets.chomp
rescatista(a,b)
rescatista(b.to_f,a.to_f)
