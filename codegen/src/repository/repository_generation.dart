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
          createClass(repository),
        ],
      ),
  );

  final emitter = DartEmitter();
  await file.writeAsString(DartFormatter().format('${output.accept(emitter)}'));
}

Class createClass(Repository repository) {
  return Class(
    (b) => b
      ..name = '${repository.name}Repository'
      ..constructors = ListBuilder(
        [
          Constructor((b) => b),
        ],
      )
      ..methods = ListBuilder(
        createMethods(repository),
      ),
  );
}

List<dynamic> createMethods(Repository repository) {
  return [
    for (var method in repository.endpoints)
      Method(
        (m) => m
          ..name = method.name
          ..returns = refer(
            'Future<${method.returnType}>',
          )
          ..modifier = MethodModifier.async
          ..requiredParameters = ListBuilder(
            [
              for (var parameter
                  in method.arguments?.keys.toList() ?? <String>[])
                Parameter(
                  (p) => p
                    ..name = parameter
                    ..type = refer(
                      method.arguments![parameter]!,
                    ),
                )
            ],
          )
          ..body = generateBody(method),
      ),
  ];
}

Code generateBody(Endpoint method) {
  String body = '';

  if (method.bodyToJsonType != null) {
    body = '''body: ${method.bodyToJsonType}(
    ${method.arguments?.keys.map((key) => '$key: ${method.arguments?[key]}').toList().join(',')}
  ).toJson(),
''';
  }

  return Code('''
 return http
    .${method.method.name}(
      Uri.parse(
        '${method.url}',
      ),
      $body
    )
    ${method.returnType == 'void' ? ';' : """.then(
      (value) => ${method.returnType}.fromJson(
        ${method.returnType.contains('List<') ? """
        jsonDecode(value.body).map((item) => ${RegExp(r"List<(.*)>").firstMatch(method.returnType)?[0]}.fromJson(item)).toList()
        """ : "jsonDecode(value.body)"}
        ,
      ),
    );
"""}
''');
}
