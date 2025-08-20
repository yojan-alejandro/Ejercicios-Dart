import 'dart:io';

void main() {
  print("=== Registro de Usuario ===");

  // Nombre de usuario
  stdout.write("Nombre de usuario: ");
  String usuario = stdin.readLineSync()!;

  // Contraseña con validación de longitud
  stdout.write("Contraseña (mínimo 8 caracteres): ");
  String contrasena = stdin.readLineSync()!;
  if (contrasena.length < 8) {
    print("❌ La contraseña es demasiado corta.");
    return; // Sale del programa
  }

  // Validación de email
  stdout.write("Email: ");
  String email = stdin.readLineSync()!;
  if (!email.contains("@")) {
    print("❌ Email inválido.");
    return;
  }

  // Validación de edad
  stdout.write("Edad: ");
  int edad = int.parse(stdin.readLineSync()!);
  if (edad <= 13) {
    print("❌ Debes ser mayor de 13 años.");
    return;
  }

  // Validación de número de teléfono
  stdout.write("Número de teléfono (10 dígitos): ");
  String telefono = stdin.readLineSync()!;
  if (telefono.length != 10 || int.tryParse(telefono) == null) {
    print("❌ Teléfono inválido.");
    return;
  }

  // Si pasa todas las validaciones
  print("\n✔️ Usuario registrado con éxito:");
  print("Usuario: $usuario");
  print("Email: $email");
  print("Edad: $edad");
  print("Teléfono: $telefono");
}
