
meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]
# Generar un hash que contenga los meses como llave y las ventas como valor.

a = Hash[meses.zip ventas]
p a

a = {"Enero"=>2000, "Febrero"=>3000, "Marzo"=>1000, "Abril"=>5000, "Mayo"=>4000}

# En base al hash generado:
# Invertir las llaves y los valores del hash.
 p a.invert


# Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)
  b = {2000=>"Enero", 3000=>"Febrero", 1000=>"Marzo", 5000=>"Abril", 4000=>"Mayo"}
  p  b.keys(b.values.max)
  #p  b.values.max

  ventas = b.keys.sort
  puts ventas[-1]
