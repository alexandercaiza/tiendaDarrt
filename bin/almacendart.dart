import 'package:almacendart/almacendart.dart' as almacendart;
import 'Tienda.dart';
import 'Producto.dart';

void main(List<String> arguments) {
   // Crear una instancia de Tienda
  var tienda = Tienda();

  // Agregar productos
  tienda.agregarProducto(Producto(nombre: 'Laptop', precio: 999.99, cantidadEnStock: 10, categoria: 'Electrónica'));
  tienda.agregarProducto(Producto(nombre: 'Smartphone', precio: 499.99, cantidadEnStock: 5, categoria: 'Electrónica'));
  tienda.agregarProducto(Producto(nombre: 'Zapatos', precio: 59.99, cantidadEnStock: 20, categoria: 'Ropa'));

  // Buscar un producto por nombre
  var productoBuscado = tienda.buscarProductoPorNombre('Laptop');
  if (productoBuscado != null) {
    print('Producto encontrado: ${productoBuscado.nombre}, Precio: \$${productoBuscado.precio}');
  }

  // Actualizar la cantidad en stock de un producto
  tienda.actualizarCantidad('Zapatos', 15);

  // Calcular el valor total del inventario
  var valorTotal = tienda.calcularValorTotalInventario();
  print('Valor total del inventario: \$${valorTotal.toStringAsFixed(2)}');

  // Mostrar productos de una categoría
  tienda.mostrarProductosPorCategoria('Electrónica');
}
