import 'dart:io';

void main() {
  print("=== Gestor de Contactos Básico ===");

  List<Map<String, String>> contactos = []; // Lista de contactos, cada contacto será un mapa

  // Registrar 5 contactos
  for (int i = 1; i <= 5; i++) {
    print("\nRegistro del contacto $i:");
    stdout.write("Nombre: ");
    String nombre = stdin.readLineSync()!;
    stdout.write("Teléfono: ");
    String telefono = stdin.readLineSync()!;
    stdout.write("Email: ");
    String email = stdin.readLineSync()!;

    // Guardamos cada contacto como un mapa dentro de la lista
    contactos.add({
      "nombre": nombre,
      "telefono": telefono,
      "email": email,
    });
  }

  // Mostrar todos los contactos
  print("\n=== Lista de contactos registrados ===");
  for (var c in contactos) {
    print("Nombre: ${c['nombre']}, Teléfono: ${c['telefono']}, Email: ${c['email']}");
  }

  // Buscar un contacto por nombre
  stdout.write("\nBuscar contacto por nombre: ");
  String buscar = stdin.readLineSync()!;
  var resultado = contactos.where((c) => c["nombre"]!.toLowerCase() == buscar.toLowerCase());

  if (resultado.isNotEmpty) {
    var c = resultado.first;
    print("Encontrado: Nombre: ${c['nombre']}, Teléfono: ${c['telefono']}, Email: ${c['email']}");
  } else {
    print("No se encontró el contacto.");
  }

  // Cantidad total de contactos
  print("\nCantidad total de contactos: ${contactos.length}");
}
