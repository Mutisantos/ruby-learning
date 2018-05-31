#Modulo File
#Creacion y Escritura
file = File.open('Hello.txt', 'w')#Abrir/Crear archivo con modo de escritura

file.puts 'Holaaa'

file.puts gets.chomp

file.close #No se guarda hasta que se cierre el archivo

#Lectura
file = File.open('Hello.txt', 'r')

puts file.read

file.close

#Lectura linea a linea
i = 1
file = File.open('Hello.txt').readlines.each do 
    |line| puts ':' + i.to_s + "|" + line
    i+=1 
end

