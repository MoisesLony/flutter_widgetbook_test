// dart format width=80
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:prueba1/main.dart' as _prueba1_main;
import 'package:prueba1/widgetbook/use_case/atoms/button_use_case.dart'
    as _prueba1_widgetbook_use_case_atoms_button_use_case;
import 'package:widgetbook/widgetbook.dart' as _widgetbook;

final directories = <_widgetbook.WidgetbookNode>[
  _widgetbook.WidgetbookLeafComponent(
    name: 'MyHomePage',
    useCase: _widgetbook.WidgetbookUseCase(
      name: 'Default Counter Page',
      builder: _prueba1_main.myHomePageUseCase,
    ),
  ),
  _widgetbook.WidgetbookFolder(
    name: 'components',
    children: [
      _widgetbook.WidgetbookFolder(
        name: 'atom',
        children: [
          _widgetbook.WidgetbookComponent(
            name: 'MyButton',
            useCases: [
              _widgetbook.WidgetbookUseCase(
                name: 'Con Tamaño Fijo',
                builder:
                    _prueba1_widgetbook_use_case_atoms_button_use_case
                        .buildFixedSizedButton,
              ),
              _widgetbook.WidgetbookUseCase(
                name: 'Por Contenido (Default)',
                builder:
                    _prueba1_widgetbook_use_case_atoms_button_use_case
                        .buildContentSizedButton,
              ),
              _widgetbook.WidgetbookUseCase(
                name: 'Responsivo (Porcentaje de Pantalla)',
                builder:
                    _prueba1_widgetbook_use_case_atoms_button_use_case
                        .buildResponsiveButton,
              ),
            ],
          ),
        ],
      ),
    ],
  ),
];
