import 'dart:io';

void main() {
  print("=== Calculadora de Batería ===");

  // Pedimos el porcentaje de batería actual
  stdout.write("¿Cual es el porcentaje actual de tu batería (0-100)?: ");
  double bateria = double.parse(stdin.readLineSync()!);

  // Pedimos el promedio de horas de uso
  stdout.write("¿En promedio al día cuantas horas de uso pasas en el móvil?: ");
  double horasUso = double.parse(stdin.readLineSync()!);

  // Calculamos las horas restantes según el porcentaje
  double horasRestantes = (bateria / 100) * horasUso;

  print("\nCon el uso actual de tu móvil te quedan aproximadamente ${horasRestantes.toStringAsFixed(1)} horas de batería.");

  // Mostramos modos de ahorro
  print("\nModos de ahorro disponibles:");
  print("1. Modo normal (sin cambios)");
  print("2. Modo ahorro (extiende 20%)");
  print("3. Modo ultra ahorro (extiende 50%)");

  stdout.write("Elija un modo: ");
  int modo = int.parse(stdin.readLineSync()!);

  // Ajustamos la duración según el modo
  if (modo == 2) {
    horasRestantes *= 1.2; // Extiende un 20%
  } else if (modo == 3) {
    horasRestantes *= 1.5; // Extiende un 50%
  }

  print("Con el modo seleccionado, la batería del móvil durará: ${horasRestantes.toStringAsFixed(1)} horas.");
}
