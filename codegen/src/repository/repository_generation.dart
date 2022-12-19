import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:change_case/change_case.dart';

import '../input.dart';

Future<void> generateRepository(Repository repository,
    {List<Model>? models}) async {
  final fileName = '${repository.name.toSnakeCase()}_repository';

  var file = File('codegen/out/$fileName.dart');

  final directives = <Directive>[
    Directive.importDeferredAs('package:http/http.dart', 'http'),
    Directive.import(
      'dart:convert',
    ),
  ];

  for (var model in models ?? <Model>[]) {
    directives.add(
      Directive.import('../models/${model.name.toSnakeCase()}'),
    );
  }

  final output = Library(
    (lib) => lib
      ..directives = ListBuilder(
        directives,
      )
      ..body = ListBuilder(
        [
          Class(
            (b) => b
              ..name = '${repository.name}Repository'
              ..constructors = ListBuilder(
                [
                  Constructor((b) => b),
                ],
              )
              ..methods = ListBuilder(
                [
                  for (var method in repository.endpoints)
                    Method(
                      (m) => m
                        ..name = method.name
                        ..returns = refer(
                          method.returnType,
                        )
                        ..modifier = method.returnType.contains('Future')
                            ? MethodModifier.async
                            : null
                        ..requiredParameters = ListBuilder(
                          [
                            for (var parameter
                                in method.arguments?.keys.toList() ??
                                    <String>[])
                              Parameter(
                                (p) => p
                                  ..name = parameter
                                  ..type = refer(
                                    method.arguments![parameter]!,
                                  ),
                              )
                          ],
                        )
                        ..body = Code('''
 return http
        .${method.method.name}(
          Uri.parse(
            '${method.url}',
          ),
          ${generateBody(method.arguments, method.bodyToJsonType)}
        )
        .then(
          (value) => ${method.returnType}.fromJson(
            jsonDecode(value.body),
          ),
        );
'''),
                    ),
                ],
              ),
          ),
        ],
      ),
  );

  final emitter = DartEmitter();
  await file.writeAsString(DartFormatter().format('${output.accept(emitter)}'));
}

String generateBody(Map<String, String>? arguments, String? toJsonType) {
  if (toJsonType == null) {
    return '';
  }

  return '''body: $toJsonType(
    ${arguments?.keys.map((key) => '$key: ${arguments[key]}').toList().join(',')}
  ).toJson(),
''';
}
