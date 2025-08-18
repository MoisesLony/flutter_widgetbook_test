// Archivo: widgetbook.dart

import 'package:flutter/material.dart';
import 'package:prueba1/widgetbook/widgetbook.directories.g.dart';
import 'package:device_frame/device_frame.dart' as df;
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:prueba1/themes.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Widgetbook.material(
      directories: directories,
      addons: [
        ThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: lightTheme,
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: darkTheme,
            ),
          ],
          initialTheme: WidgetbookTheme(
            name: 'Light',
            data: lightTheme,
          ),
          themeBuilder: (context, theme, child) {
                return Theme(
                  data: theme,
                  child: child,
                );
              },
            ),
        // 3. Aquí agregamos el addon de dispositivos
       DeviceFrameAddon(
          // Lista de dispositivos que quieres que aparezcan
          devices: [
            Devices.ios.iPhone14Pro, // Un iPhone
            Devices.android.samsungGalaxyS20, // Un Samsung
            Devices.android.pixel4, // Un Pixel
          ],
          // Opcional: define cuál de los dos se muestra por defecto
          initialDevice: Devices.ios.iPhone14Pro,
        ),
      ],
    );
  }
}