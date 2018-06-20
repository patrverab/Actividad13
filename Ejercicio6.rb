

# Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor es el precio de este.
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

# Obtener el plato mas caro.
    p restaurant_menu.keys.max

    p restaurant_menu.key(restaurant_menu.values.sort[-1])

# Obtener el plato mas barato.

bar = restaurant_menu.values.sort
p bar [0]

p restaurant_menu.key(restaurant_menu.values.sort[0])

# Sacar el promedio del valor de los platos.

def promedio(h)
   suma = h.values.inject(0) {|sum, x| sum + x}
   p suma
   suma / h.count.to_f
end

 p promedio(restaurant_menu)

# Crear un arreglo con solo los nombres de los platos.
 p n = restaurant_menu.keys
   n = ["Ramen", "Dal Makhani", "Coffee"]

# Crear un arreglo con solo los valores de los platos.
p v = restaurant_menu.values
  v = [3, 4, 2]

# Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
restaurant_menu.each do |key,value|
  restaurant_menu[key] = value * 1.19
end

p restaurant_menu

# Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra
restaurant_menu.each do |key,value|
  restaurant_menu[key] = value * 0.8 if key.include?(' ')
end
puts restaurant_menu
