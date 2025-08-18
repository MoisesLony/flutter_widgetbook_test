// lib/components/atom/button.usecase.dart

import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:prueba1/components/atom/button.dart'; // Asegúrate que la ruta a tu botón sea correcta

// ===================================================================
// CASO DE USO 1: TAMAÑO POR DEFECTO (AJUSTADO AL CONTENIDO)
// ===================================================================

@widgetbook.UseCase(
  name: 'Por Contenido (Default)',
  type: MyButton,
)
Widget buildContentSizedButton(BuildContext context) {
  // --- Knobs de Apariencia ---
  final text = context.knobs.string(label: 'Texto', initialValue: 'Botón por Contenido');
  final fontSize = context.knobs.double.slider(label: 'Tamaño de Fuente', initialValue: 16, min: 8, max: 40);
  final isEnabled = context.knobs.boolean(label: 'Habilitado', initialValue: true);
  final withIcon = context.knobs.boolean(label: 'Mostrar Ícono', initialValue: false);
  final useCustomColors = context.knobs.boolean(label: 'Usar colores personalizados', initialValue: false);

  final Color? backgroundColor = useCustomColors
      ? context.knobs.color(label: 'Color de Fondo', initialValue: Colors.deepPurple)
      : null;

  final Color? textColor = useCustomColors
      ? context.knobs.color(label: 'Color de Texto', initialValue: Colors.white)
      : null;

  return Center(
    child: MyButton(
      text: text,
      textStyle: TextStyle(fontSize: fontSize),
      onPressed: isEnabled ? () {} : null,
      icon: withIcon ? const Icon(Icons.send, size: 18) : null,
      backgroundColor: backgroundColor,
      textColor: textColor,
    ),
  );
}

// ===================================================================
// CASO DE USO 2: TAMAÑO FIJO
// ===================================================================

@widgetbook.UseCase(
  name: 'Con Tamaño Fijo',
  type: MyButton,
)
Widget buildFixedSizedButton(BuildContext context) {
  // --- Knobs de Apariencia ---
  final text = context.knobs.string(label: 'Texto', initialValue: 'Botón Fijo');
  final fontSize = context.knobs.double.slider(label: 'Tamaño de Fuente', initialValue: 16, min: 8, max: 40);
  final isEnabled = context.knobs.boolean(label: 'Habilitado', initialValue: true);
  final withIcon = context.knobs.boolean(label: 'Mostrar Ícono', initialValue: false);
  final useCustomColors = context.knobs.boolean(label: 'Usar colores personalizados', initialValue: false);

  final Color? backgroundColor = useCustomColors
      ? context.knobs.color(label: 'Color de Fondo', initialValue: Colors.deepPurple)
      : null;

  final Color? textColor = useCustomColors
      ? context.knobs.color(label: 'Color de Texto', initialValue: Colors.white)
      : null;
      
  // --- Knobs Específicos de Tamaño Fijo ---
  final double width = context.knobs.double.slider(label: 'Ancho (Width)', initialValue: 250, min: 50, max: 500);
  final double height = context.knobs.double.slider(label: 'Alto (Height)', initialValue: 60, min: 30, max: 150);

  return Center(
    child: MyButton(
      text: text,
      textStyle: TextStyle(fontSize: fontSize),
      onPressed: isEnabled ? () {} : null,
      icon: withIcon ? const Icon(Icons.send, size: 18) : null,
      backgroundColor: backgroundColor,
      textColor: textColor,
      fixedSize: Size(width, height),
    ),
  );
}

// ===================================================================
// CASO DE USO 3: TAMAÑO RESPONSIVE
// ===================================================================

@widgetbook.UseCase(
  name: 'Responsivo (Porcentaje de Pantalla)',
  type: MyButton,
)
Widget buildResponsiveButton(BuildContext context) {
  // --- Knobs de Apariencia (sin cambios) ---
  final text = context.knobs.string(label: 'Texto', initialValue: 'Botón Responsivo');
  final fontSize = context.knobs.double.slider(label: 'Tamaño de Fuente', initialValue: 16, min: 8, max: 40);
  final isEnabled = context.knobs.boolean(label: 'Habilitado', initialValue: true);
  final withIcon = context.knobs.boolean(label: 'Mostrar Ícono', initialValue: false);
  final useCustomColors = context.knobs.boolean(label: 'Usar colores personalizados', initialValue: false);

  final Color? backgroundColor = useCustomColors
      ? context.knobs.color(label: 'Color de Fondo', initialValue: Colors.deepPurple)
      : null;

  final Color? textColor = useCustomColors
      ? context.knobs.color(label: 'Color de Texto', initialValue: Colors.white)
      : null;

  // --- Knobs Específicos de Tamaño Responsivo ---
  final percentage = context.knobs.double.slider(
    label: 'Porcentaje de Ancho de Pantalla',
    initialValue: 0.8,
    min: 0.1,
    max: 1.0,
  );
  
  // <<<--- NUEVO KNOB PARA LA ALTURA ---<<<
  final double height = context.knobs.double.slider(
    label: 'Altura Fija',
    initialValue: 50,
    min: 30,
    max: 150,
  );

  final screenWidth = MediaQuery.of(context).size.width;

  return Center(
    child: SizedBox(
      width: screenWidth * percentage,
      height: height, 
      child: MyButton(
        text: text,
        textStyle: TextStyle(fontSize: fontSize),
        onPressed: isEnabled ? () {} : null,
        icon: withIcon ? const Icon(Icons.send, size: 18) : null, 
        backgroundColor: backgroundColor,
        textColor: textColor,
      ),
    ),
  );
}