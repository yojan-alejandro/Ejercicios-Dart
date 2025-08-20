import 'dart:io';

void main() {
  print("=== Conversor de Unidades ===");

  bool salir = false; // Variable para controlar el menú

  while (!salir) {
    // Menú principal
    print("\nMenú de opciones:");
    print("1. Temperatura (C ↔ F)");
    print("2. Distancia (m ↔ km ↔ millas)");
    print("3. Peso (g ↔ kg ↔ lb)");
    print("4. Almacenamiento (KB ↔ MB ↔ GB)");
    print("5. Salir");
    stdout.write("Seleccione una opción: ");
    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        // Conversión de Celsius a Fahrenheit
        stdout.write("Ingrese temperatura en Celsius: ");
        double c = double.parse(stdin.readLineSync()!);
        double f = (c * 9 / 5) + 32;
        print("$c °C = $f °F");
        break;

      case 2:
        // Conversión de distancia
        stdout.write("Ingrese distancia en metros: ");
        double m = double.parse(stdin.readLineSync()!);
        print("$m m = ${m / 1000} km = ${m / 1609} millas");
        break;

      case 3:
        // Conversión de peso
        stdout.write("Ingrese peso en gramos: ");
        double g = double.parse(stdin.readLineSync()!);
        print("$g g = ${g / 1000} kg = ${g / 453.6} lb");
        break;

      case 4:
        // Conversión de almacenamiento
        stdout.write("Ingrese almacenamiento en KB: ");
        double kb = double.parse(stdin.readLineSync()!);
        print("$kb KB = ${kb / 1024} MB = ${(kb / 1024) / 1024} GB");
        break;

      case 5:
        // Salida del programa
        salir = true;
        print("Saliendo...");
        break;

      default:
        print("Opción inválida.");
    }
  }
}
