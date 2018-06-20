
# inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

# Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.
# Si el usuario ingresa 1, podrá agregar un item y su stock en un solo string y agregarlo al hash. Para separar el nombre del stock el usuario debe utilizar una coma.
# Ejemplo del input: "Pendrives, 100"
# Si el usuario ingresa 2, podrá eliminar un item.
# Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).
# Si el usuario ingresa 4, podrá ver el stock total (suma del stock de cada item) que hay en el negocio.
# Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock.
# Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item existe en el inventario o no. Por ejemplo, el usuario ingresará "Notebooks" y el programa responderá "Sí".
# El programa debe repertirse hasta que el usuario ingrese 7 (salir).


inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

print inventario

def add_element(hash)
  print hash, "\n"
  puts 'agregar un item'
  input = gets.split(',').map {|ele| ele.strip}
  has[input[0].to_sym] = input[1].to_i
  puts hash
end

def delete_element(hash)
  print hash, "\n"
  puts "eliminar un item"
  choise = gets.chomp.split.map(&:capitalize).join('')
  hash.delete.(choice.to_sym) {|ele| puts "#{ele} no se encuentra en el inventario"}
  p hash
end

def update_element(hash)
  print hash, "\n"
  puts 'Actualizar'
  updated_element = gets.chomp.split.map(&:capitalize).join(' ')
  puts 'Ingresa el nuevo stock'
  updated_stock = gets
  hash[updated_element.to_sym] = updated_stock.to_i
  p hash
end

def stock_sumary(hash)
  stock = hash.values.inject(0) {|sum, v| sum + v}
  puts "El inventario actual tiene #{stock} item"
end

def max_stock(hash)
  max = hash.max_by {| key, value| value}
  puts "El producto con maypr stock es #{max[0]} con #{max[1]} elementos"
end

def check_if_exists(hash)
  puts 'Ingresa el item que quieres buscar'
  item = gets.chomp.split(' ').map(&:capitalize).join(' ').to_sym
  if hash[item]
  puts 'El producto si se encuentra en el inventario'
  else
  puts 'El producto no se encuenta en el inventario'
  end
end

#Se pide:
puts 'Ingresa una de estas opciones'
opcion = 0
while opcion != '7'
  puts 'Opcion 1: Agregar'
  puts 'Opcion 2: Eliminar'
  puts 'Opcion 3: Actualizar'
  puts 'Opcion 4: Total stock'
  puts 'Opcion 5: Mayor cantidad de stock'
  puts 'Opcion 6: Buscar'
  puts 'Opcion 7: Salir'
  opcion = gets.chomp
  puts case opcion
  when '1'
    add_element(inventario)
  when '2'
    delete_element(inventario)
  when '3'
    update_element(inventario)
  when '4'
    stock_summary(inventario)
  when '5'
    max_stock(inventario)
  when '6'
    check_if_exists(inventario)
  else
    exit
  end
end
