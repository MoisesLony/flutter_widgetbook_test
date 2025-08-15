import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import '../../atom/button.dart'; // Asegúrate de que esta ruta sea correcta

@widgetbook.UseCase(
  name: 'Botón Interactivo', 
  type: MyButton,
)
Widget interactiveButtonUseCase(BuildContext context) {
  // Con los knobs, creas controles interactivos en el panel derecho de Widgetbook
  final String text = context.knobs.string(
    label: 'Texto del botón',
    initialValue: 'Presióname',
  );

  final bool isEnabled = context.knobs.boolean(
    label: 'Habilitado',
    initialValue: true,
  );

  final bool withIcon = context.knobs.boolean(
    label: 'Mostrar Ícono',
    description: 'Añade un ícono de "enviar" al botón.',
    initialValue: false,
  );

  final Color backgroundColor = context.knobs.color(
    label: 'Color de Fondo',
    initialValue: Colors.blue, // Un color inicial por defecto
  );
  
  final Color textColor = context.knobs.color(
    label: 'Color de Texto',
    initialValue: Colors.white,
  );

 
  return Padding(
    padding: const EdgeInsets.all(100.0), 
    child: Align(
      alignment: Alignment.topCenter, 
      child: MyButton(
        text: text,
        onPressed: isEnabled ? () {} : null,
        icon: withIcon ? const Icon(Icons.send, size: 18) : null,
        backgroundColor: backgroundColor,
        textColor: textColor,
      ),
    ),
  );
}