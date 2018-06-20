

# Se tienen dos arrays uno con el nombre de personas y otro con las edades, se pide generar un hash con el nombre y edad de cada persona (se asume que no existen dos personas con el mismo nombre)

personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

a = Hash[personas.zip edades]

p a

a = {"Carolina"=>32, "Alejandro"=>28, "Maria Jesús"=>41, "Valentín"=>19}

# Crear un método que reciba el hash y devuelva el promedio de las edades del hash pasado como argumento.

def promedio (hash)
  suma = hash.values.inject(0){|sum, x| sum + x}
  p suma/ hash.count
end

promedio(a)
