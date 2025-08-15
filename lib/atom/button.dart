import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed; // 1. Anulable para el estado deshabilitado
  final Widget? icon;            // 2. Parámetro opcional para el ícono
  final Color? backgroundColor; // 3. Parámetro opcional para el color de fondo
  final Color? textColor;       // 4. Parámetro opcional para el color del texto

  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    // Se crea un estilo a partir de los parámetros.
    // Si un color es nulo, se usará el color por defecto del tema.
    final ButtonStyle style = ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      foregroundColor: textColor, // `foregroundColor` controla el color del texto y el ícono
    );

    // Si el widget `icon` no es nulo, usamos `ElevatedButton.icon`.
    // De lo contrario, usamos el constructor estándar de `ElevatedButton`.
    if (icon != null) {
      return ElevatedButton.icon(
        onPressed: onPressed,
        style: style,
        icon: icon!, // Es seguro usar `!` porque ya comprobamos que no es nulo
        label: Text(text),
      );
    } else {
      return ElevatedButton(
        onPressed: onPressed,
        style: style,
        child: Text(text),
      );
    }
  }
}