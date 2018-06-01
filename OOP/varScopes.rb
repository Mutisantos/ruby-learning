
$alcanceGlobal = 3
alcanceExterno = 2

def scopeLocal ()
    alcanceLocal = 1 #deberian ser en minuscula inicial despues del metodo no existe mas
    puts defined? alcanceLocal
end


def scopeInstance() #Dura tanto como dure el objeto que la contenga


end

scopeLocal()
puts defined? alcanceGlobal