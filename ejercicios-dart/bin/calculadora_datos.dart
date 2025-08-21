import 'dart:io'; 

void main() {
  print("=== Calculadora de Datos Móviles ===");

  List<double> consumoSemana = []; // Lista para guardar el consumo de cada día

  // Pedimos el consumo de datos de cada día de la semana
  for (int i = 1; i <= 7; i++) {
    stdout.write("Ingrese los MB consumidos en el día $i: ");
    double mb = double.parse(stdin.readLineSync()!); // Leemos el valor
    consumoSemana.add(mb); // Guardamos en la lista
  }

  // Calculamos el consumo total de la semana
  double totalSemana = consumoSemana.reduce((a, b) => a + b);
  // Sacamos el promedio diario
  double promedioDiario = totalSemana / 7;

  print("\nConsumo total semanal: ${totalSemana.toStringAsFixed(2)} MB");
  print("Promedio diario: ${promedioDiario.toStringAsFixed(2)} MB");

  double planMensual = 2048; // Plan de 2 GB expresado en MB
  double consumoMensualEstimado = promedioDiario * 30; // Estimación de consumo en 30 días

  // Verificamos si se excede el plan
  if (consumoMensualEstimado > planMensual) {
    print("⚠️ Estás excediendo tu plan mensual de 2GB.");
  } else {
    print("✔️ Estás dentro de tu plan mensual de 2GB.");
  }

  // Estimamos cuántos días le alcanzan los datos
  double diasRestantes = planMensual / promedioDiario;
  print("Te alcanzarían aproximadamente para ${diasRestantes.toStringAsFixed(0)} días con ese consumo.");
}
