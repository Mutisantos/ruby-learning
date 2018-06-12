#Modulo File

read_only = "r"
write_only = "w"
read_write_new = "r+/w+"
append_only = "a"
read_write_append = "a+"

#Creacion y Escritura
file = File.open('Hello.txt', 'w')#Abrir/Crear archivo con modo de escritura

content = gets.chomp.to_s

file.puts content

file.close #No se guarda hasta que se cierre el archivo

#Append al archivo

file = File.open('Hello.txt', 'a')#Abrir un archivo y seguir escribiendo en el

content = gets.chomp.to_s

file.puts content

file.close

#Lectura
file = File.open('Hello.txt', 'r')

puts file.read

file.close

#Lectura linea a linea

i = 1
lineas = Array.new
File.open('Hello.txt').readlines.each do |line| 
    #puts ':' + i.to_s + "|" + line
    #puts line.reverse #Invierte el contenido de la cadena, linea a linea
    lineas << line.reverse
    i+=1 
end

#Al arreglo de cadenas invertidas, ahora le invierto el orden
file = File.open('InverseHello.txt','w')
lineas.reverse.each do |linea|
    file.puts linea
end
file.close

