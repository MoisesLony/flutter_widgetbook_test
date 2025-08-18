import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed; // 1. Anulable para el estado deshabilitado
  final Widget? icon;            // 2. Parámetro opcional para el ícono
  final Color? backgroundColor; // 3. Parámetro opcional para el color de fondo
  final Color? textColor;       // 4. Parámetro opcional para el color del texto
  final Size? fixedSize;
  final TextStyle? textStyle;   // 5. Parámetro opcional para el estilo del texto

  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.backgroundColor,
    this.textColor,
    this.fixedSize,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
   
    final ButtonStyle style = ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      foregroundColor: textColor, // `foregroundColor` controla el color del texto y el ícono
      fixedSize: fixedSize,      
    );

    if (icon != null) {
      return ElevatedButton.icon(
        onPressed: onPressed,
        style: style,
        icon: icon!,
        label: Text(text, style: textStyle),
      );
    } else {
      return ElevatedButton(
        onPressed: onPressed,
        style: style,
        child: Text(text, style: textStyle),
      );
    }
  }
}