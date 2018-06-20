productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

1.- productos.each { |producto, valores| puts producto }

2.- productos[:cereal] = 2200

3.- productos['bebida'] = 2000
print productos

4.- productos2 = productos.to_a
print productos2

5.-  productos.delete('galletas')
 print  productos
