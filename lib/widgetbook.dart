import 'package:flutter/material.dart';
import 'package:prueba1/widgetbook.directories.g.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Esta directiva 'part' conecta este archivo con el archivo que se generará.


void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Envuelve todo en un MaterialApp, que es la base de la app.
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      // 2. Usa un Scaffold como la estructura principal de la pantalla.
      home: Scaffold(
        // 3. Coloca tu Widgetbook dentro del 'body' del Scaffold.
        body: Widgetbook.material(
          directories: directories,
        ),
      ),
    );
  }
}
